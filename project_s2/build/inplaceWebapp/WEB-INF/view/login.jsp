<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

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
		<h1> Logowanie  </h1>
<c:if test="${(param.error != null) && (not empty SPRING_SECURITY_LAST_EXCEPTION)}">
    <p class="text-danger"><c:out value="${SPRING_SECURITY_LAST_EXCEPTION.message eq 'Bad credentials' ?
     'Niepoprawne dane' : SPRING_SECURITY_LAST_EXCEPTION.message}"/></p>
</c:if>
<form:form method="post">
    <table class="table table-dark">
        <tbody>
        <tr>
            <td><label  for="username">Nazwa:</label></td>
            <td><input class="form-control" type="text" id="username" name="username"/></td>
        </tr>
        <tr>
            <td><label for="password">Hasło:</label></td>
            <td><input type="password" id="password" name="password" class="form-control"/></td>
        </tr>
        <tr>
            <td>
                <button type="submit" class="btn btn-outline-light">Zaloguj</button>
            </td>
        </tr>
        </tbody>
    </table>
</form:form>
		</div>
	</div>


</body>
</html>