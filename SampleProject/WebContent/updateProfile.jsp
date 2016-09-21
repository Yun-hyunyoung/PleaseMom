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
    <header class="intro-header" style="background-image: url('img/home-bg.jpg')">
        <div class="container">
            
        </div>
    </header>

    <!-- Main Content -->
    <div class="container">
        <div class="row">
            <div class="col-lg-6 col-lg-offset-3 col-md-10 col-md-offset-1">
                <jsp:include page="updateprofile/updateprofile.jsp"></jsp:include>
            </div>
        </div>
    </div>

    <jsp:include page="include/scripts.jsp"></jsp:include>

</body>

</html>
