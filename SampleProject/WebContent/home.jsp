<!DOCTYPE html>

<html lang="ko">

<head>
	<%@ page contentType="text/html;charset=UTF-8" %>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Please, My Mom</title>
    
	<!-- Date Picker CSS -->
  	<link rel="stylesheet" href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.16/themes/base/jquery-ui.css">
  	
    <!-- Bootstrap Core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.css" rel="stylesheet">

    <!-- Theme CSS -->
    <link href="css/clean-blog.css" rel="stylesheet">

	<!-- Video Heading CSS -->
	<link href="css/video-head.css" rel="stylesheet">
	
    <!-- Custom Fonts -->
    <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href='https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>

    <jsp:include page="include/nav.jsp" flush="true"></jsp:include>

    <!-- Page Header -->
    <!-- Set your background image for this header on the line below. -->
    <header class="intro-header">
            <div class="video">
			<video  autoplay="autoplay" preload="auto" loop="loop" id="mainVideo">
				<source src="video/wild.mp4" type="video/mp4">
				<source src="video/wild.webm" type="video/webm">
			</video>
			<div class="videotext">
	    		<p class="videomainheding">동반은 LIFE 야</p>
    			<p class="videosubheding">30만 재외 유학생과 함께 하는 동반 여행기. 우리는 하나입니다</p>
			</div>
		</div>
        <div class="container">
        </div>
    </header>

    <!-- Main Content -->
    <jsp:include page="include/find.jsp"></jsp:include>
    
    <div class="container">
        <div class="row">
            <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
                <hr>
                <div class="post-preview">
                	국가 사진들이 입력될 것
                </div>
                <hr>
                <div class="post-preview">
                    후기들이 입력될 것
                </div>
            </div>
        </div>
	</div>
            

    <hr>

    <jsp:include page="include/footer.jsp"></jsp:include>
	
    <!-- jQuery -->
    <script src="vendor/jquery/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="vendor/bootstrap/js/bootstrap.min.js"></script>

    <!-- Contact Form JavaScript -->
    <script src="js/jqBootstrapValidation.js"></script>
    <script src="js/contact_me.js"></script>

    <!-- Theme JavaScript -->
    <script src="js/clean-blog.min.js"></script>
    
    <!-- Airplane Search JavaScript -->
	<script src="js/airportSearch.js"></script>
    <!-- Nation Search JavaScript -->
	<script src="js/countrySearch.js"></script>
	
	<!-- Date Picker JavaScript -->
	<script src="js/datepicker.js"></script>
	
	<script src="//code.jquery.com/ui/1.12.0/jquery-ui.js"></script>
</body>

</html>
