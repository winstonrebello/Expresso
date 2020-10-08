    // JavaScript source code
$(document).ready(function () {

var gadgetCarousel = $(".caro");

gadgetCarousel.each(function () {
    if ($(this).is(".deal-content")) {
        $(this).slick({
            speed: 800,
            infinite: false,
            slidesToShow: 6,
            slidesToScroll: 6,
            asNavFor: this.slider,
            nextArrow: $('.dealnext'),
            prevArrow: $('.dealprev'),
        });
    }
    else if ($(this).is(".best-content")) {
        $(this).slick({
            speed: 800,
            infinite: false,
            slidesToShow: 6,
            slidesToScroll: 5,
            asNavFor: this.slider,
            nextArrow: $('.bestnext'),
            prevArrow: $('.bestprev'),
        });
	}
    else if ($(this).is(".ephone-content")) {
        $(this).slick({
            speed: 800,
            infinite: false,
            slidesToShow: 6,
            slidesToScroll: 5,
            asNavFor: this.slider,
            nextArrow: $('.ephonenext'),
            prevArrow: $('.ephoneprev'),
        });
    }
    else if ($(this).is(".lap-content")) {
        $(this).slick({
            speed: 800,
            infinite: false,
            slidesToShow: 6,
            slidesToScroll: 5,
            asNavFor: this.slider,
            nextArrow: $('.lapnext'),
            prevArrow: $('.lapprev'),
        });
    }
    else if ($(this).is(".review-content")) {
        $(this).slick({
            speed: 800,
            infinite: false,
            slidesToShow: 6,
            slidesToScroll: 5,
            asNavFor: this.slider,
            nextArrow: $('.reviewnext'),
            prevArrow: $('.reviewprev'),
        });
    }
    else {
        $(this).slick();
    }
});
});