// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$(document).on("page:change", function() {
	$(".js-submit-review").on("click", createReview)
})

function createReview(event) {
	event.preventDefault();
	reviewTitle = $(event.currentTarget).data("review-")
	userID = $(event.currentTarget).data("user-id")
	productID = $(event.currentTarget).data("product-id")
	$.ajax({
		type: 'post',
		url:`/users/${userID}/products/${productID}/reviews`,
		data: {title: {review: title}, description: {review: description}}
		success: function(response){
			console.log(response)
		},
		error: function(response) {
			console.log(response);
		}
	})
}