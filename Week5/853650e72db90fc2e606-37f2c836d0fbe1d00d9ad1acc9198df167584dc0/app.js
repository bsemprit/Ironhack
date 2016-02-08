$(document).ready(function () {
	// body...
var price = `Prepending in progress`;

$('.js-prepend').prepend(price);

$(".js-make_multicolor").on('click', function() {
	$('*').addClass('unicorn-mode')
	$('.js-make_multicolor').removeClass('unicorn-mode')
})

// $('.js-make_multicolor').on('hover', function() {
// 		$('.unicorn-mode').slideDown()
// 	})

})


