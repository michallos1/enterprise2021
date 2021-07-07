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
		<h1> Rejestracja  </h1>
		<c:if test="${not empty info}"><p><c:out value="${info}"/></p></c:if>

        <form:form method="post" modelAttribute="user">
            <table class="table table-dark">
                <tbody>
                <tr>
                    <td><label for="username">Nazwa:</label></td>
                    <td><form:input path="username" id="username" class="form-control"/></td>
                </tr>
                <tr>
                    <td><label for="password">Hasło:</label></td>
                    <td><form:password path="password" id="password" class="form-control"/></td>
                </tr>
                <tr>
                    <td>
                        <button type="submit" class="btn btn-outline-light">Zarejestruj</button>
                    </td>
                </tr>
                </tbody>
            </table>
        </form:form>
		</div>
	</div>


</body>
</html>