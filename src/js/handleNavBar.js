
const navbar = document.querySelector('#navbar');
const imageSection = document.querySelector('#image-section'); 


const observer = new IntersectionObserver((entries) => {
  entries.forEach(entry => {
    if (!entry.isIntersecting) {
      navbar.classList.add('navbar-visible');
    } else {
      navbar.classList.remove('navbar-visible');
    }
  });
}, {
  threshold: 0 
});

observer.observe(imageSection);
