var swiper = new Swiper(".swiper-container", {
    effect: "coverflow",
    grabCursor: true,
    centeredSlides: true,
    slidesPerView: "auto",
    coverflowEffect: {
      rotate: 1,
      stretch: 0,
      depth: 100,
      modifier: 2,
      slideShadows: true,
    },
    // loop:true,
    pagination: {
      el: ".swiper-pagination",
    },
  });

  const bar= document.querySelector('#bar');
  const navbar= document.getElementById('navbar');
  const close= document.getElementById('close')

  if (bar){
    bar.addEventListener("click", ()=>{
      navbar.classList.add('active');
    })
  }
  if (close){
    close.addEventListener("click", ()=>{
      navbar.classList.remove('active');
    })
  }

