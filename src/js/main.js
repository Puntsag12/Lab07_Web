import siteData from './siteData.js'; // Default export-оор авч байна

document.addEventListener('DOMContentLoaded', () => {
    
const updateTexts = () => {
    const elements = document.querySelectorAll('[data-key]');
    
    elements.forEach(el => {
        const keyPath = el.getAttribute('data-key');
        const displayType = el.getAttribute('data-type'); 
        const keys = keyPath.split('.');
        
        let value = siteData;
        keys.forEach(k => {
            if (value) value = value[k];
        });
        
        if (value) {
            if (Array.isArray(value)) {
                // Хоосон утгуудыг шүүж утгатай мөрүүдийг л авна
                const cleanArray = value.filter(item => item && item.trim() !== "");

                if (displayType === 'list') {
                    const items = cleanArray.map(item => `<li>${item}</li>`).join('');
                    el.innerHTML = `<ul class="custom-list">${items}</ul>`;
                } else {
                    el.innerHTML = cleanArray.map(item => `<p class="mb-3">${item}</p>`).join('');
                }
            } else {
                // Array биш бол шууд утгыг нь онооно
                el.innerHTML = value;
            }
        }
    });
};

    // 2. Статистик тоонуудыг "stats-container" руу шахах
    const updateStats = () => {
        const container = document.getElementById('stats-container');
        if (!container || !siteData.university_stats) return;

        const s = siteData.university_stats;
        const statsArray = [
            { label: "Undergraduate Student", value: s.undergraduate_students },
            { label: "Master's & Doctorate", value: s.graduate_students },
            { label: "Teachers & Employees", value: s.staff },
            { label: "Foreign Student", value: s.foreign_students },
            { label: "Schools", value: s.schools },
            { label: "Partners", value: s.partners },
            { label: "Library Holdings", value: s.library_holdings }
        ];

        const html = statsArray.map(item => `
            <div class="stat">
                <h2>${Number(item.value).toLocaleString()}</h2>
                <div class="line"></div>
                <p>${item.label}</p>
            </div>
        `).join('');

        container.innerHTML = html + html; // Loop-д зориулж 2 удаа
    };

    // Функцуудаа ажиллуулах
    updateTexts();
    updateStats();
});