/*$("#userid").on("keydown", function() {
	$("#id-valid").html("");
})
$("#passwd").on("keydown", function() {
	$("#pass-valid").html("");
})
$("#submit").on("click", function(event) {
	$("#id-valid").html("");
	$("#pass-valid").html("");
	if($("#userid").val() == ""){
		$("#id-valid").html("아이디를 입력하세요");
		event.preventDefault();
	}else if($("#passwd").val() == ""){
		$("#pass-valid").html("비밀번호를 입력하세요");
		event.preventDefault();
	}
})*/
$(".id-valid-ck").on("keyup", function() {
	$.ajax({
		type:'post',
		url:'search/memberSearchByPw.jsp',
		data: {userid: $(".id-valid-ck").val()},
		dataType: 'text',
		success: function(data) {
			if(data.trim() == 'none'){
				$('.valid-id').html('<h5>사용 가능한 아이디입니다.</h5>');
				$(".valid-submit").prop("type", "submit");
			}else{
				$('.valid-id').html('<h5>중복된 아이디입니다.</h5>');
				$(".valid-submit").prop("type", "button");
			}
		}
	})
})

$(".valid-submit").on("click", function(event) {
	$.ajax({
		type:'post',
		url:'search/memberSearchByPw.jsp',
		data: {userid: $(".id-valid-ck").val()},
		dataType: 'text',
		success: function(data) {
			console.log(data.trim());
			if(data.trim() != 'none'){
				$('.valid-id').html('<h5>중복된 아이디입니다!!!</h5>');
			}
			if (($("#passwd2").val() != $("#passwd").val())){
				$(".valid-pass").html("<h5>비밀번호가 일치하지 않습니다!!!</h5>");
			}
		}
	})
})
$("#passwd2").on("focusout", function() {
	if ($("#passwd2").val() == $("#passwd").val()) {
		$(".valid-pass").html("<h5>비밀번호 일치힙니다.</h5>");
		$(".valid-submit").prop("type", "submit");
	} else{
		$(".valid-pass").html("<h5>비밀번호 불일치합니다.</h5>");
		$(".valid-submit").prop("type", "button");
	}
})