<!DOCTYPE html>

<html lang="ko">

<head>
	<%@ page contentType="text/html;charset=UTF-8" %>
    <jsp:include page="include/header.jsp" flush="true"></jsp:include>
</head>

<body>
    <jsp:include page="include/nav.jsp" flush="true"></jsp:include>

    <!-- Page Header -->
    <!-- Set your background image for this header on the line below. -->
    <header class="intro-header">
            <div class="video">
			<video  autoplay="autoplay" preload="auto" loop="loop" id="mainVideo">
				<!-- <source src="video/wild.mp4" type="video/mp4">
				<source src="video/wild.webm" type="video/webm"> -->
			</video>
			<div class="videotext">
	    		<p class="videomainheding">동반은 LIFE 야</p>
    			<p class="videosubheding">30만 재외 유학생과 함께 하는 동반 여행기. 우리는 하나입니다</p>
			</div>
		</div>
        <div class="container">
        </div>
    </header>

    <jsp:include page="include/find.jsp"></jsp:include>
    
    <jsp:include page="include/image-find.jsp"></jsp:include>
    
    <jsp:include page="include/footer.jsp"></jsp:include>
    
    <jsp:include page="include/scripts.jsp"></jsp:include>
    
</body>

</html>
