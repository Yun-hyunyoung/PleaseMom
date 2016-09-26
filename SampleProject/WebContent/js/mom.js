$(".img-text").on("click", function() {
	var country = $(this)[0].textContent;
	$("#imgSearchCountry").val(country);
	$("#imgSearchForm").submit();
})
function boardList(f){
	f.action="BoardListServlet";
	f.submit();
}