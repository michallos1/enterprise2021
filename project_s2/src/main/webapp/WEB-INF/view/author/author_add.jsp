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
		<%@ include file="../menu.jsp"%>
	</div>

    <div>
     <h1> Add new author </div>
        <form:form action="author_add" modelAttribute="authors" method="post">
        <table class="table table-dark">
                <tbody>
                <tr>
                    <td><label for="name">Imię: </label></td>
                    <td><form:input path="name" id="name" class="form-control"/></td>
                </tr>
                <tr>
                    <td><label for="surname">Nazwisko: </label></td>
                    <td><form:input path="surname" id="surname" class="form-control"/></td>
                </tr>
                <tr>
                    <td>
                        <button type="submit" class="btn btn-outline-light">Zapisz</button>
                    </td>
                </tr>
                </tbody>
            </table>
        </form:form>
    </div>
</div>

</body>
</html>