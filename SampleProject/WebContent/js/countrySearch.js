$(function(){
	$( ".countrySearch" ).autocomplete({
		source: function( request, response ) {
	        $.ajax({
	            dataType: "json",
	            type : 'Get',
	            url: 'search/countrySearch.jsp',
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
	});
});