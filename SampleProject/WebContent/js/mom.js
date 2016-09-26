$(".img-text").on("click", function() {
	console.log($(this));
	var aaa = $(this)[0].textContent;
	console.log(aaa);
})