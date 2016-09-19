<%@page import="com.dto.PageDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%
	PageDTO pageDTO = (PageDTO) request.getAttribute("page");
	int curPage = pageDTO.getCurPage();
	int perPage = pageDTO.getPerPage();
	int totalRecord = pageDTO.getTotalRecord();

	int totalCount = totalRecord / perPage;
	if (totalRecord % perPage != 0)
		totalCount++;

	for (int i = 1; i <= totalCount; i++) {

		if (curPage == i) {
			out.print(i + "&nbsp;");
		} else {
			out.print("<a href='BoardListServlet?curPage=" + i + "'>" + i + "</a>&nbsp;");
		}

	}
%>

