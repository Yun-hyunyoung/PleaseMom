$(function(){
	$( "#airportSearch" ).autocomplete({
        source : function( request, response ) {
             $.ajax({
                    type: 'post',
                    url: "search/airportSearch.jsp",
                    //request.term = $("#autocomplete").val()
                    data: { value : request.term },
                    dataType:'json',
                    success: function(data) {
                    	var plane = data.airplane
                    	if(plane.length > 0){
                    		var str = ''
                        		for (var i = 0; i < plane.length; i++){
                        			str += '<div class="panel-body panel-airport_search" id="a'+i+'"><h5>' + plane[i].plane + '</h5></div>';
                        		}
                            $("#airport_autocomplete").html(str);
                            for (var i = 0; i < plane.length; i++){
                            	$("body").on("click","#a"+i, function() {
									$("#airportSearch").val($(this).text());
									$("#airport_autocomplete").html("");
								})
                			}
                            $("body").on("click", function() {
								$("#airport_autocomplete").html("");
							})
                    	}else{
                    		$("#airport_autocomplete").html("");
                    	}
                    }
               });
            },
        //조회를 위한 최소글자수
        minLength: 1
    });
});