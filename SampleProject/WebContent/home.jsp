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
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Theme CSS -->
    <link href="css/clean-blog.min.css" rel="stylesheet">

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
    <header class="intro-header" style="background-image: url('img/home-bg.jpg')">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
                    <div class="site-heading">
                        <h1>엄마를 부탁해</h1>
                        <br>
                        <hr class="small">
                        <br>
                        <span class="subheading">안심하고 부모님을 해외로 초대하세요</span>
                    </div>
                </div>
            </div>
        </div>
    </header>

    <!-- Main Content -->
    <div class="container">
        <div class="row">
            <div class="col-lg-12 col-md-10">
                <div class="search-form">
                	<form action="">
                		<div class="SearchForm_location col-md-2 col-lg-3">
	                		<input class="form-control input-lg" type="text" placeholder="출발(공항)" id="airportSearch">
	                    	<div class="panel panel-info" id="airport_autocomplete" style="z-index:1; position:absolute;"></div>
                    	</div>
                    	<div class="SearchForm_location col-md-2 col-lg-3">
    	            		<input class="form-control input-lg" type="text" placeholder="도착(국가)" id="nationSearch">
        	            	<div class="panel panel-info" id="nation_autocomplete" style="z-index:1; position:absolute;"></div>
        	            </div>
        	            <div class="SearchForm_date col-md-2 col-lg-2">
            	        	<input class="form-control input-lg" id="from-datepicker" type="text" placeholder="출발일From">
            	        </div>
            	        <div class="SearchForm_date col-md-2 col-lg-2">
                	    	<input class="form-control input-lg" id="to-datepicker" type="text" placeholder="출발일To">
                	    </div>
                	    <div class="submit-form col-md-2 col-lg-2">
                    		<input class="form-control input-lg" type="submit" value="검색">
                    	</div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    
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

    <!-- Footer -->
    <footer>
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
                    <ul class="list-inline text-center">
                        <li>
                            <a href="#">
                                <span class="fa-stack fa-lg">
                                    <i class="fa fa-circle fa-stack-2x"></i>
                                    <i class="fa fa-twitter fa-stack-1x fa-inverse"></i>
                                </span>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <span class="fa-stack fa-lg">
                                    <i class="fa fa-circle fa-stack-2x"></i>
                                    <i class="fa fa-facebook fa-stack-1x fa-inverse"></i>
                                </span>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <span class="fa-stack fa-lg">
                                    <i class="fa fa-circle fa-stack-2x"></i>
                                    <i class="fa fa-github fa-stack-1x fa-inverse"></i>
                                </span>
                            </a>
                        </li>
                    </ul>
                    <p class="copyright text-muted">Copyright &copy; Your Website 2016</p>
                </div>
            </div>
        </div>
    </footer>
	
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
	<script src="js/nationSearch.js"></script>
	
	<!-- Date Picker JavaScript -->
	<script src="js/datepicker.js"></script>
	
	<script src="//code.jquery.com/ui/1.12.0/jquery-ui.js"></script>
</body>

</html>
