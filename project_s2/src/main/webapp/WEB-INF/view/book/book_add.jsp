<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
				 <h1> Add new book </div>
<form:form action="book_add" modelAttribute="book" method="post">
    <table class="table table-dark">
        <tr>
            <td><label for="name">Nazwa: </label></td>
            <td><form:input class="form-control" path="name" id="name"/></td>
        </tr>
        <tr>
            <td><label for="publisher">Wydawnictwo: </label></td>
            <td><form:input class="form-control" path="publisher" id="publisher"/></td>
        </tr>
        <tr>
            <td><label for="price">Cena: </label></td>
            <td><form:input class="form-control" path="price" id="price"/></td>
        </tr>
        <tr>
            <td><label for="category">Kategoria: </label></td>
            <td><form:select class="form-control" path="category">
                <form:options class="form-control" items="${categories}" itemValue="id" itemLabel="name" />
            </form:select></td>
        </tr>
        <tr>
            <td><label>Autorzy: </label></td>
            </tr>
            <tr></tr>
        <c:forEach  var="authors" items="${authors}" >
        <tr>
        <td>${authors.name} ${authors.surname}</td>
        <td><form:checkbox class="form-control" path="authors" value="${authors.id}"/></td>

        </tr>
        </c:forEach>



        <tr>
            <td>
                <button type="submit" class="btn btn-outline-light">Zapisz</button>
            </td>
        </tr>
    </table>
</form:form>
        		</div>
	</div>


</body>
</html>