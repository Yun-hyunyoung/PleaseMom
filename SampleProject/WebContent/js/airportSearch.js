$(function(){
	$( ".airportSearch" ).autocomplete({
		source: function( request, response ) {
	        $.ajax({
	            dataType: "json",
	            type : 'Get',
	            url: 'search/airportSearch.jsp',
	            data: { value : request.term },
	            success: function(data) {
	                //$('.airportSearch').removeClass('ui-autocomplete-loading');  
	                // hide loading image

	                response( $.map( data, function(item) {
	                    // your operation on data
	                	return item.label;
	                }));
	            },
	            error: function(data) {
	                //$('.airportSearch').removeClass('ui-autocomplete-loading');  
	            }
	        });
	    },
	    focus: function( event, ui ) {
	    	event.preventDefault();
	    },
	    classes: {
	        "ui-autocomplete": "highlight"
	    }
	}).data("ui-autocomplete")._renderItem = function (ul, item) {

        ul.addClass('customClass'); //Ul custom class here

        return $("<li></li>")
        .addClass(item.customClass) //item based custom class to li here
        .append("<a href='#'>" + item.label + "</a>")
        .data("ui-autocomplete-item", item)
        .appendTo(ul);
    };
});