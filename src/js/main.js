document.addEventListener('DOMContentLoaded', async () => {
    
    // 1. Backend-ээс өгөгдөл татах (API)
    async function fetchSiteData() {
        try {
            const response = await fetch('/api/content');
            if (!response.ok) throw new Error('Сүлжээний алдаа гарлаа');
            const data = await response.json();
            
            const formattedData = {};
            data.forEach(item => {
                if (!formattedData[item.page_name]) formattedData[item.page_name] = {};
                if (!formattedData[item.page_name][item.section_name]) formattedData[item.page_name][item.section_name] = {};
                
                formattedData[item.page_name][item.section_name][item.content_key] = item.content_value;
            });
            return formattedData;
        } catch (error) {
            console.error("Өгөгдөл татахад алдаа гарлаа:", error);
            return null;
        }
    }

    // 2. Текст болон жагсаалтыг шинэчлэх
    const updateTexts = (dbData) => {
        const elements = document.querySelectorAll('[data-key]');
        
        elements.forEach(el => {
            const keyPath = el.getAttribute('data-key');
            const displayType = el.getAttribute('data-type');
            const keys = keyPath.split('.');
            
            let value = dbData;
            keys.forEach(k => {
                if (value) value = value[k];
            });
            
            if (value && typeof value === 'string') {
                // Жагсаалт боловсруулах (Хоосон мөрүүдийг шүүнэ)
                if (value.includes('|')) { 
                    const list = value.split('|')
                                      .map(i => i.trim())
                                      .filter(i => i !== ""); // Хоосон мөрийг устгах

                    if (displayType === 'list') {
                        const items = list.map(i => `<li>${i}</li>`).join('');
                        el.innerHTML = `<ul class="custom-list">${items}</ul>`;
                    } else {
                        el.innerHTML = list.map(i => `<p class="mb-3">${i}</p>`).join('');
                    }
                } else {
                    // Энгийн текст
                    el.innerHTML = value;
                }
            }
        });
    };

    // 3. Статистик тоонуудыг шинэчлэх
    const updateStats = async () => {
        const container = document.getElementById('stats-container');
        if (!container) return;

        try {
            const res = await fetch('/api/stats');
            const stats = await res.json();

            // Таны CSS-д зориулж loop-д оруулах (2 удаа дараалуулж харуулах)
            const renderHtml = (data) => data.map(item => `
                <div class="stat">
                    <h2>${Number(item.value).toLocaleString()}</h2>
                    <div class="line"></div>
                    <p>${item.category}</p>
                </div>
            `).join('');

            container.innerHTML = renderHtml(stats) + renderHtml(stats);
        } catch (err) {
            console.error("Статистик татахад алдаа гарлаа:", err);
        }
    };

    // Гүйцэтгэх дараалал
    const dbData = await fetchSiteData();
    if (dbData) {
        updateTexts(dbData);
    }
    updateStats();
});