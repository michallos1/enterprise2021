<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">


<h2>Books</h2>
<div>
    <table>
        <tr>
            <th>Nazwa</th>
            <th>Wydawnictwo</th>
            <th>Cena</th>
            <th>Kategoria</th>
        </tr>
        <c:forEach var="books" items="${books}">
            <tr>
                <td>${books.name}</td>
                <td>${books.publisher}</td>
                <td>${books.price}</td>
                <td>${books.category.name}</td>
            </tr>
        </c:forEach>
    </table>
</div>