document.addEventListener('DOMContentLoaded', async () => {
    
    // 1. Backend-ээс өгөгдөл татах функц
    async function loadData() {
        try {
            // Flask API-аас өгөгдөл татах (Үндсэн хаяг портыг тодорхой болгов)
            const API_BASE = "http://localhost:5000/api";
            
            const response = await fetch(`${API_BASE}/content`);
            if (!response.ok) throw new Error("Хуудасны контентыг татаж чадсангүй.");
            const rawData = await response.json();

            const statsRes = await fetch(`${API_BASE}/stats`);
            if (!statsRes.ok) throw new Error("Статистик өгөгдлийг татаж чадсангүй.");
            const statsData = await statsRes.json();

            // SQL-ээс ирсэн Array бүтцийг HTML-ийн таньдаг Оюунлаг бүтэц рүү (Nested Object) хөрвүүлэх
            const fetchedSiteData = {};
            
            rawData.forEach(item => {
                if (!fetchedSiteData[item.page_name]) {
                    fetchedSiteData[item.page_name] = {};
                }
                if (!fetchedSiteData[item.page_name][item.section_name]) {
                    fetchedSiteData[item.page_name][item.section_name] = {};
                }
                
                // init.sql-ийн талбарын нэр 'content_key' болон 'content_value' байна
                fetchedSiteData[item.page_name][item.section_name][item.content_key] = item.content_value;
            });

            // Текстүүд болон статистикийг шинэчлэх функцуудыг дуудах
            updateTexts(fetchedSiteData);
            updateStats(statsData);

        } catch (error) {
            console.error("Өгөгдөл татахад алдаа гарлаа. Статик датаг ашиглаж байна:", error);
            // Хэрэв backend ажиллахгүй байвал ядаж алдаа заахгүй статик датаг харуулж болно
        }
    }

    // 2. HTML элементүүдэд текст оноох функц
    const updateTexts = (siteData) => {
        const elements = document.querySelectorAll('[data-key]');
        
        elements.forEach(el => {
            const keyPath = el.getAttribute('data-key'); 
            const displayType = el.getAttribute('data-type'); 
            const keys = keyPath.split('.');
            
            // Түлхүүрийн дагуу объектын гүн рүү нэвтэрч утгыг авах (Жишээ нь: index.hero.title_1)
            let value = siteData;
            keys.forEach(k => {
                if (value) value = value[k];
            });

            if (value !== undefined && value !== null) {
                // Хэрэв текст дотор '~' тэмдэгт байвал жагсаалт эсвэл олон параграф болгож хуваах
                if (value.toString().includes('~')) { 
                    const cleanArray = value.split('~').map(i => i.trim()).filter(i => i !== "");

                    if (displayType === 'list') {
                        el.innerHTML = `<ul class="custom-list">${cleanArray.map(item => `<li>${item}</li>`).join('')}</ul>`;
                    } else {
                        el.innerHTML = cleanArray.map(item => `<p class="mb-3">${item}</p>`).join('');
                    }
                } else {
                    // Энгийн текст бол шууд онооно
                    el.innerHTML = value;
                }
            }
        });
    };

    // 3. Статистик тоонуудыг контейнер дотор үүсгэж оруулах функц
    const updateStats = (statsData) => {
        const container = document.getElementById('stats-container');
        if (!container) return;

        // Контейнерыг цэвэрлээд шинэ датаг хэвлэх
        container.innerHTML = statsData.map(item => `
            <div class="stat mx-3 text-center">
                <h2>${Number(item.value).toLocaleString()}+</h2>
                <div class="stat-name text-uppercase small text-muted">${item.category}</div>
            </div>
        `).join('');
    };

    // Ажиллагааг эхлүүлэх
    loadData();
});