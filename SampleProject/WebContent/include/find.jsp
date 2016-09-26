<%@page import="com.dto.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <div class="container">
        <div class="row">
            <div class="col-lg-12 col-md-10">
             	<form name="myForm" method="get" action="BoardListServlet">
    	            <div class="search-form">
                		<div class="SearchForm_location col-md-2 col-lg-3">
	                		<input class="form-control input-lg airportSearch" type="text" placeholder="출발(공항)" name="scb_from">
                    	</div>
                    	<div class="SearchForm_location col-md-2 col-lg-3">
    	            		<input class="form-control input-lg countrySearch" type="text" placeholder="도착(국가)" name="scb_to">
        	            </div>
        	            <div class="SearchForm_date col-md-2 col-lg-2">
            	        	<input class="form-control input-lg" id="from-datepicker" type="text" placeholder="출발일From" name="min">
            	        </div>
            	        <div class="SearchForm_date col-md-2 col-lg-2">
                	    	<input class="form-control input-lg" id="to-datepicker" type="text" placeholder="출발일To" name="max">
                	    </div>
                	    <div class="submit-form col-md-2 col-lg-2">
                    		<input class="form-control input-lg" type="button" value="검색" onclick="boardList(myForm)">
                    	</div>
	                </div>
                </form>
            </div>
        </div>
    </div>