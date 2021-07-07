<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <title> Księgarnia </title>
</head>
<body>
	<div class="container d-flex flex-column justify-content-evenly" >
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
                    <th>Edytuj</th>
                    <th>Usuń</th>
                </tr>
                <c:forEach var="books" items="${books}">
                    <c:url var="edit" value="/books/edit">
                        <c:param name="bookId" value="${books.id}"/>
                    </c:url>
                    <c:url var="delete" value="/books/delete">
                         <c:param name="bookId" value="${books.id}"/>
                    </c:url>
                    <tr>
                        <td>${books.name}</td>
                        <td>${books.publisher}</td>
                        <td>${books.price}</td>
                        <td>${books.category.name}</td>
                        <td><a href="${edit}">Edytuj</a></td>
                        <td><a href="${delete}">Usuń</a></td>
                    </tr>
                </c:forEach>
            </table>
        </div>

	</div>
</body>
</html>