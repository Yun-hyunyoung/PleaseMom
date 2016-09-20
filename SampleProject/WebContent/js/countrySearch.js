$(function(){
	$( "#countrySearch" ).autocomplete({
        source : function( request, response ) {
             $.ajax({
                    type: 'post',
                    url: "search/countrySearch.jsp",
                    //request.term = $("#autocomplete").val()
                    data: { value : request.term },
                    dataType:'json',
                    success: function(data) {
                    	var plane = data.airplane
                    	if(plane.length > 0){
                    		var str = ''
                        		for (var i = 0; i < plane.length; i++){
                        			str += '<div class="panel-body panel-country_search" id="n'+i+'"><h5>' + plane[i].plane + '</h5></div>';
                        		}
                            $("#country_autocomplete").html(str);
                            for (var i = 0; i < plane.length; i++){
                            	$("body").on("click","#n"+i, function() {
                            		console.log(this);
									$("#countrySearch").val($(this).text());
									$("#country_autocomplete").html("");
								})
                			}
                            $("body").on("click", function() {
								$("#country_autocomplete").html("");
							})
                    	}else{
                    		$("#country_autocomplete").html("");
                    	}
                    }
               });
            },
        //조회를 위한 최소글자수
        minLength: 1
    });
});