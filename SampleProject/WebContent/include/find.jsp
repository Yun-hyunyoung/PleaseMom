<%@page import="com.dto.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
	form .search-form{
		width: 90%;
		height: 70px;
		padding: 10px;
		background-color: #DCD4D4;
		border-radius: 5px;
	}
	form .search-form div{
		padding-left:2px;
		padding-right:2px;
	}
</style>
 <div class="container">
        <div class="row">
            <div class="col-lg-12" align="center">
             	<form name="myForm" method="get" action="BoardListServlet">
    	            <div class="search-form">
                		<div class="SearchForm_location col-md-3 col-lg-3" >
	                		<input class="form-control input-lg airportSearch" type="text" placeholder="출발(공항)" name="scb_from" value="${ map.scb_from }">
                    	</div>
                    	<div class="SearchForm_location col-md-3 col-lg-3">
    	            		<input class="form-control input-lg countrySearch" type="text" placeholder="도착(국가)" name="scb_to" value="${ map.scb_to }">
        	            </div>
        	            <div class="SearchForm_date col-md-3 col-lg-2">
            	        	<input class="form-control input-lg datepicker" type="text" placeholder="출발일From" name="min" value="${ map.min }">
            	        </div>
            	        <div class="SearchForm_date col-md-3 col-lg-2">
                	    	<input class="form-control input-lg datepicker-to" type="text" placeholder="출발일To" name="max" value="${ map.max }">
                	    </div>
                	    <div class="submit-form col-md-3 col-lg-2">
                    		<input class="form-control input-lg" type="button" value="검색" onclick="boardList(myForm)">
                    	</div>
	                </div>
                </form>
            </div>
        </div>
    </div>