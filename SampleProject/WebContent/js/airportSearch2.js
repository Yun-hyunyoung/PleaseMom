$(function(){
	$( ".airportSearch" ).autocomplete({
        source : function( request, response ) {
        	var selected = null;
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
                            $(".airport_autocomplete").html(str);
                            for (var i = 0; i < plane.length; i++){
                            	$("body").on("click","#a"+i, function() {
									$(".airportSearch").val($(this).text());
									$(".airport_autocomplete").html("");
								})
                			}
                            for (var i = 0; i < plane.length; i++){
                            	$("body").on("mouseover", "#a"+i, function() {
                            		$(".panel-airport_search").siblings().removeClass("selected-search");
									selected = $(this);
									selected.addClass("selected-search");
                            	})
                            }
                        	
                            $("body").on("click", function() {
								$(".airport_autocomplete").html("");
							})
                    	}else{
                    		$(".airport_autocomplete").html("");
                    	}
                    },
                    select : function(event, ui) {
                        if (ui.item) {
                            event.preventDefault();
                            $("#selected_tags span").append('<a href=" + ui.item.tag_url + " target="_blank">'+ ui.item.label +'</a>');
                            //$("#tagQuery").value = $("#tagQuery").defaultValue
                            var defValue = $("#abc").prop('defaultValue');
                            $("#abc").val(defValue);
                            $("#abc").blur();
                            return false;
                        }
                    }
               });
            },
        //조회를 위한 최소글자수
        minLength: 1
    });
	$( ".airportSearch2" ).autocomplete({
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
							str += '<div class="panel-body panel-airport_search2" id="b'+i+'"><h5>' + plane[i].plane + '</h5></div>';
						}
						$(".airport_autocomplete2").html(str);
						for (var i = 0; i < plane.length; i++){
							$("body").on("click","#b"+i, function() {
								$(".airportSearch2").val($(this).text());
								$(".airport_autocomplete2").html("");
							})
							
							$("body").on("mouseover", "#b"+i, function() {
								$(this).addClass("");
							})
						}
						$("body").on("click", function() {
							$(".airport_autocomplete2").html("");
						})
					}else{
						$(".airport_autocomplete2").html("");
					}
				}
			});
		},
		//조회를 위한 최소글자수
		minLength: 1
	});
});