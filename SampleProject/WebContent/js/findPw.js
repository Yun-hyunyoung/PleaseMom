$("#findPw").on("click", function(event) {
	$.ajax({
		type:'post',
		url:'search/memberSearchByPw.jsp',
		data:{userid:$("#userid_findpw").val()},
		dataType:'text',
		success:function(responseData){
			console.log(responseData);
			if(responseData.trim() == 'none'){
				$("#checkId").html("<h5 style='color:red;'>이메일이 일치하지 않습니다.</h5>");
			}else{
				$("#showSubmit").html("<h4><input class='form-control input-lg' type='submit' value='발송'></h4>");
			}
		}
	})
})
$("#findPw").on('click', function() {
	$("#checkId").html("");
	$("#showSubmit").html("");
})