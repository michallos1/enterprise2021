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
		<h2>Books</h2>
		</div>
        <div>
            <table class="table table-dark">
                <tr>
                    <th>Nazwa</th>
                    <th>Wydawnictwo</th>
                    <th>Cena</th>
                    <th>Kategoria</th>
                    <sec:authorize access="hasRole('ADMIN')">
                    <th>Edytuj</th>
                    <th>Usuń</th>
                    </sec:authorize>
                    <sec:authorize access="hasRole('USER')">
                    <th>Koszyk</th>
                    </sec:authorize>
                </tr>
                <c:forEach var="books" items="${books}">
                    <c:url var="edit" value="/book/edit">
                        <c:param name="bookId" value="${books.id}"/>
                    </c:url>
                    <c:url var="delete" value="/book/delete">
                         <c:param name="bookId" value="${books.id}"/>
                    </c:url>
                    <tr>
                        <td>${books.name}</td>
                        <td>${books.publisher}</td>
                        <td>${books.price}</td>
                        <td>${books.category.name}</td>
                        <sec:authorize access="hasRole('ADMIN')">
                        <td><a href="${edit}" class="btn btn-primary">Edytuj</a></td>
                        <td><a href="${delete}" class="btn btn-primary">Usuń</a></td>
                        </sec:authorize>
                        <sec:authorize access="hasRole('USER')">
                        <td><a href="${$}" class="btn btn-primary">Koszyk</a></td>
                        </sec:authorize>
                    </tr>
                </c:forEach>
            </table>
        </div>

	</div>
</body>
</html>