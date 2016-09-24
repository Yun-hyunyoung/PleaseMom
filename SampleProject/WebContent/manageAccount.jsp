<!DOCTYPE html>

<html lang="ko">

<head>
	<%@ page contentType="text/html;charset=UTF-8" %>
    <jsp:include page="include/header.jsp"></jsp:include>
</head>

<body>

    <jsp:include page="include/nav.jsp" flush="true"></jsp:include>

    <!-- Page Header -->
    <!-- Set your background image for this header on the line below. -->
    <header class="intro-header" style="background-image: url('img/home-bg.jpg')">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
                    <div class="site-heading">
                        <h1>계정관리</h1>
                        <br>
                        <hr class="small">
                    </div>
                </div>
            </div>
        </div>
    </header>

    <!-- Main Content -->
    <div class="container">
        <div class="row">
            <div class="col-lg-6 col-lg-offset-3 col-md-10 col-md-offset-1">
                <jsp:include page="updateprofile/manageAccount.jsp"></jsp:include>
            </div>
        </div>
    </div>

    <hr>

    <jsp:include page="include/footer.jsp"></jsp:include>
	<jsp:include page="include/scripts.jsp"></jsp:include>
</body>

</html>