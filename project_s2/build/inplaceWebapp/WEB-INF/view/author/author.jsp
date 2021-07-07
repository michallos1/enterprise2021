<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<html>
<head>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <title> Księgarnia </title>
</head>
<body>
	<div class="container">
	    <div>
		<%@ include file="../menu.jsp"%>
		</div>

		<div>
		<h2>Author</h2>
		</div>
        <div>
            <table class="table table-dark">
                <tr>
                    <th>ID</th>
                    <th>Nazwa</th>
                    <th>Nazwisko</th>
                    <sec:authorize access="hasRole('ADMIN')">
                    <th>Usuń</th>
                    </sec:authorize>
                </tr>
                <c:forEach var="authors" items="${authors}">
                    <c:url var="delete" value="/author/delete">
                        <c:param name="authorId" value="${authors.id}"/>
                    </c:url>
                    <tr>
                        <td>${authors.id}</td>
                        <td>${authors.name}</td>
                        <td>${authors.surname}</td>
                        <sec:authorize access="hasRole('ADMIN')">
                        <td><a href="${delete}" class="btn btn-primary">Usuń</a></td>
                        </sec:authorize>
                    </tr>
                </c:forEach>
            </table>

		</div>
	</div>

</body>
</html>