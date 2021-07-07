<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<html>
<head>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <title> Księgarnia </title>
</head>
<body>
	<div class="container">
	    <div>
		<%@ include file="menu.jsp"%>
		</div>
		<div>
		<h1> Witamy w naszej księgarni  </h1>

		<sec:authorize access="!isAuthenticated()">
            <a href="${contextPath}/login" class="btn btn-primary">Zaloguj się</a>
        </sec:authorize>
        <sec:authorize access="isAuthenticated()">
            <a href="${contextPath}/logout" class="btn btn-primary">Wyloguj się</a>
        </sec:authorize>
		   </div>
	</div>


</body>
</html>