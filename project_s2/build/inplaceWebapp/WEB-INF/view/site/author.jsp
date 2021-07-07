<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <title> Księgarnia </title>
</head>
<body>
	<div class="container flex flex-column justify-content-evenly">
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
                </tr>
                <c:forEach var="authors" items="${authors}">
                    <tr>
                        <td>${authors.id}</td>
                        <td>${authors.name}</td>
                        <td>${authors.surname}</td>
                    </tr>
                </c:forEach>
            </table>

		</div>
	</div>

</body>
</html>