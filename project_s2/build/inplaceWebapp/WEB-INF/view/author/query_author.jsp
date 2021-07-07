<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

<h2>Author</h2>
<div>
    <table>
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
