<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- Navigation -->
    <nav class="navbar navbar-default navbar-custom navbar-fixed-top">
        <div class="container-fluid">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header page-scroll">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    Menu <i class="fa fa-bars"></i>
                </button>
                <a class="navbar-brand" href="home.jsp">Mom</a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                	<c:if test="${ sessionScope.login == null }">
	                    <li>
	                        <a href="#">도움말</a>
	                    </li>
	                    <li>
	                        <a href="AddMemberFormServlet">회원가입</a>
	                    </li>
	                    <li>
	                        <a href="LoginFormServlet">로그인</a>
	                    </li>
                    </c:if>
                    <c:if test="${ sessionScope.login != null }">
	                    <li>
	                        <a href="#">도움말</a>
	                    </li>
	                    <li>
	                        <a href="#">메시지</a>
	                    </li>
	                    <li>
	                        <a href="#">이름</a>
	                    </li>
                    </c:if>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>