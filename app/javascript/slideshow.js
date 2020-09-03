'use strict';
window.addEventListener('load', function(){
  const images = ["/assets/image1.jpg", "/assets/image2.jpg", "/assets/image3.jpg", "/assets/image4.jpg", "/assets/image5.jpg", "/assets/image6.jpg"]
  let num = -1;
  
  function slideshow() {
    if (num === 5) {
      num = 0;
    } else {
      num++;
    }
    document.getElementById("header-image").src = images[num];
  };
  
  setInterval(slideshow, 10000);
})

