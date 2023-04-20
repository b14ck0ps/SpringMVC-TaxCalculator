<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page isELIgnored="false" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
          integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <title>Home</title>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container-fluid">
        <a class="navbar-brand" href="${pageContext.request.contextPath}/">Tax Calculator</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav">
                <c:if test="${not empty sessionScope.user}">
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="${pageContext.request.contextPath}/home">Profile</a>
                    </li>
                </c:if>

                <li class="nav-item">
                    <a class="nav-link" href="${pageContext.request.contextPath}/calculator/">Calculator</a>
                </li>
                <c:if test="${not empty sessionScope.user}">
                    <li class="nav-item">
                        <a class="nav-link" href="${pageContext.request.contextPath}/user/logout">Logout</a>
                    </li>
                </c:if>
                <c:if test="${empty sessionScope.user}">
                    <li class="nav-item">
                        <a class="nav-link" href="${pageContext.request.contextPath}/user/login">Login</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="${pageContext.request.contextPath}/user/register">Register</a>
                    </li>
                </c:if>
            </ul>
        </div>
    </div>
</nav>