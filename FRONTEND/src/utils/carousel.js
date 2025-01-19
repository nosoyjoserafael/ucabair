let currentSlide = 0;

function moveSlide(direction) {
    const carouselContainer = document.querySelector('.carousel-container');
    const totalSlides = document.querySelectorAll('.img-carousel').length;

    currentSlide += direction;

    if (currentSlide < 0) {
        currentSlide = totalSlides - 1;
    } else if (currentSlide >= totalSlides) {
        currentSlide = 0;
    }

    const offset = -currentSlide * 100;
    carouselContainer.style.transform = `translateX(${offset}%)`;
}