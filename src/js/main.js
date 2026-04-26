document.addEventListener('DOMContentLoaded', async () => {
    
    // 1. Backend-ээс өгөгдөл татах функц
    async function loadData() {
        try {
            // Flask API-аас өгөгдөл татах
            const response = await fetch('http://localhost:5000/api/content');
            const rawData = await response.json();

            const statsRes = await fetch('http://localhost:5000/api/stats');
            const statsData = await statsRes.json();

            // SQL-ээс ирсэн жагсаалтыг (Array) main.js-ийн таньдаг бүтэц рүү хөрвүүлэх
            const siteData = {};
            rawData.forEach(item => {
                if (!siteData[item.page_name]) siteData[item.page_name] = {};
                if (!siteData[item.page_name][item.section_name]) siteData[item.page_name][item.section_name] = {};
                
                siteData[item.page_name][item.section_name][item.content_key] = item.content_value;
            });

            // Текстүүд болон статистикийг шинэчлэх
            updateTexts(siteData);
            updateStats(statsData);

        } catch (error) {
            console.error("Өгөгдөл татахад алдаа гарлаа:", error);
        }
    }

    // 2. Текст шинэчлэх функц
const updateTexts = (siteData) => {
    const elements = document.querySelectorAll('[data-key]');
    
    elements.forEach(el => {
        const keyPath = el.getAttribute('data-key');
        const displayType = el.getAttribute('data-type'); 
        const keys = keyPath.split('.');
        
        let value = siteData;
        keys.forEach(k => {
            if (value) value = value[k];
        });

        console.log(`Key: ${keyPath}, Value: ${value}`); // Энд утга ирж байгаа эсэхийг харна

        if (value) {
            if (value.toString().includes('~')) { // toString() нэмэх нь аюулгүй
                const cleanArray = value.split('~').map(i => i.trim()).filter(i => i !== "");

                if (displayType === 'list') {
                    el.innerHTML = `<ul class="custom-list">${cleanArray.map(item => `<li>${item}</li>`).join('')}</ul>`;
                } else {
                    el.innerHTML = cleanArray.map(item => `<p class="mb-3">${item} </p>`).join('');
                }
            } else {
                el.innerHTML = value;
            }
        }
    });
};

    // 3. Статистик тоонуудыг шинэчлэх
    const updateStats = (statsData) => {
        const container = document.getElementById('stats-container');
        if (!container) return;

        const html = statsData.map(item => `
            <div class="stat">
                <h2>${Number(item.value).toLocaleString()}</h2>
                <div class="line"></div>
                <p>${item.category}</p>
            </div>
        `).join('');

        container.innerHTML = html + html; 
    };

    loadData(); // Өгөгдөл татах процессыг эхлүүлэх
});