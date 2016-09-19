$(function(){
	$( "#nationSearch" ).autocomplete({
        source : function( request, response ) {
             $.ajax({
                    type: 'post',
                    url: "nationSearch.jsp",
                    //request.term = $("#autocomplete").val()
                    data: { value : request.term },
                    dataType:'json',
                    success: function(data) {
                    	var plane = data.airplane
                    	if(plane.length > 0){
                    		var str = ''
                        		for (var i = 0; i < plane.length; i++){
                        			str += '<div class="panel-body panel-nation_search" id="n'+i+'"><h5>' + plane[i].plane + '</h5></div>';
                        		}
                    		console.log($(".panel-info"));
                            $("#nation_autocomplete").html(str);
                            for (var i = 0; i < plane.length; i++){
                            	$("body").on("click","#n"+i, function() {
                            		console.log(this);
									$("#nationSearch").val($(this).text());
									$("#nation_autocomplete").html("");
								})
                			}
                            $("body").on("click", function() {
								$("#nation_autocomplete").html("");
							})
                    	}else{
                    		$("#nation_autocomplete").html("");
                    	}
                    }
               });
            },
        //조회를 위한 최소글자수
        minLength: 1
    });
});