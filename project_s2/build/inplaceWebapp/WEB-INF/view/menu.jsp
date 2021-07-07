<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">


<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <div class="container-fluid">
    <a class="navbar-brand" href="/project_s2/">Księgarnia</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
      <div class="navbar-nav">
        <a class="nav-link" href="/project_s2/author/author">Author</a>
        <a class="nav-link" href="/project_s2/book/book">Book</a>

        <sec:authorize access="hasRole('ADMIN')">
        <a class="nav-link" href="/project_s2/author/author_add">Add Author</a>
        </sec:authorize>
        <sec:authorize access="hasRole('ADMIN')">
        <a class="nav-link" href="/project_s2/book/book_add">Add Book</a>
        </sec:authorize>

        <sec:authorize access="!isAuthenticated()">
        <a class="nav-link" href="/project_s2/login">Login</a>
        </sec:authorize>
        <sec:authorize access="!isAuthenticated()">
        <a class="nav-link" href="/project_s2/register">Register</a>
        </sec:authorize>

      </div>
    </div>
  </div>
</nav>