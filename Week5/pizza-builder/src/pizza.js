$(document).ready(function(){
	$('.crustPrice').toggle();
	$('.saucePrice').toggle();
});


// Write your Pizza Builder JavaScript in this file.
$('.btn').on("click", function(){
	$(this).toggleClass("active");
});

$(".btn-pepperonni").on('click', function() {
	$(".pep").toggle();
	// $(".btn-pepperonni").toggleClass("active");

	// if ($(".btn-pepperonni").hasClass("active") == false) {
	// 	var value = $("strong").text();
	// 	var valueWithoutDollarSign = value.slice(1)
	// 	var valueToInt = parseInt(valueWithoutDollarSign);
	// 	var newValue = valueToInt - 1;
	// 	var newValueToStr = newValue.toString();
	// 	$("strong").text("$" + newValueToStr);
	// }
	// else {
	// 	var value = $("strong").text();
	// 	var valueWithoutDollarSign = value.slice(1)
	// 	var valueToInt = parseInt(valueWithoutDollarSign);
	// 	var newValue = valueToInt + 1;
	// 	var newValueToStr = newValue.toString();
	// 	$("strong").text("$" + newValueToStr);
	// }
	if($('.btn-pepperonni').hasClass("active")== false) {
		var totalPrice = Number($('.total').text().slice(1));
		var withTotal = "" + (totalPrice - 1);
		$('.total').text("$" + withTotal);
	}
	else {
		var totalPrice = Number($('.total').text().slice(1));
		var withTotal = "" + (totalPrice + 1);
		$('.total').text("$" + withTotal);
	}
	$('.pepPrice').toggle();
});

$(".btn-green-peppers").on('click', function() {
	$(".green-pepper").toggle();
	// $(".btn-green-peppers").toggleClass("active");
	if($('.btn-green-peppers').hasClass("active")== false) {
		var totalPrice = Number($('.total').text().slice(1));
		var withTotal = "" + (totalPrice - 1);
		$('.total').text("$" + withTotal);
	}
	else {
		var totalPrice = Number($('.total').text().slice(1));
		var withTotal = "" + (totalPrice + 1);
		$('.total').text("$" + withTotal);
	}
	$('.gnpepPrice').toggle();
});

$(".btn-mushrooms").on('click', function() {
	$(".mushroom").toggle();
	// $(".btn-mushrooms").toggleClass("active");
		if($('.btn-mushrooms').hasClass("active")== false) {
		var totalPrice = Number($('.total').text().slice(1));
		var withTotal = "" + (totalPrice - 1);
		$('.total').text("$" + withTotal);
	}
	else {
		var totalPrice = Number($('.total').text().slice(1));
		var withTotal = "" + (totalPrice + 1);
		$('.total').text("$" + withTotal);
	}
	$('.mushPrice').toggle();
});


$(".btn-crust").on("click", function() {
	$(".crust").toggleClass("crust-gluten-free");
	// $(".btn-crust").toggleClass("active");
		if($('.btn-crust').hasClass("active")== false) {
		var totalPrice = Number($('.total').text().slice(1));
		var withTotal = "" + (totalPrice - 5)
		$('.total').text("$" + withTotal)
	}
	else {
		var totalPrice = Number($('.total').text().slice(1));
		var withTotal = "" + (totalPrice + 5)
		$('.total').text("$" + withTotal)
	}
	$('.crustPrice').toggle()
})

$(".btn-sauce").on("click", function() {
	$(".sauce").toggleClass("sauce-white");
	// $(".btn-sauce").toggleClass("active");
		if($('.btn-sauce').hasClass("active")== false) {
		var totalPrice = Number($('.total').text().slice(1));
		var withTotal = "" + (totalPrice - 3)
		$('.total').text("$" + withTotal)
	}
	else {
		var totalPrice = Number($('.total').text().slice(1));
		var withTotal = "" + (totalPrice + 3)
		$('.total').text("$" + withTotal)
	}
	$('.saucePrice').toggle()
})
