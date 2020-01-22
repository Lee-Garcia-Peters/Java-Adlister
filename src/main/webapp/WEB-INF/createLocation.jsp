<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Select your city!" />
    </jsp:include>
</head>
<body>
<c:choose>
    <c:when test="${sessionScope.user.username != null}">
        <jsp:include page="/WEB-INF/partials/navbarOnline.jsp" />
    </c:when>
    <c:otherwise>
        <jsp:include page="/WEB-INF/partials/navbar.jsp" />
    </c:otherwise>
</c:choose>
<div class="jumbotron jumbotron-fluid" style="margin: 0">
    <div class="container">
        <h1 class="display-4">Please select your city to create your own ad!</h1>
        <p class="lead">The Texas Adlister allows you to create ads to buy, sell, find jobs, and housing in the areas below!</p>
    </div>
</div>
<div class="card-group">
    <div class="card">
        <a href="/ads">
            <img class="card-img-top" src="../resources/img/Texas-Austin.jpg" alt="austin image cap">
        </a>
        <div class="card-body">
            <h5 class="card-title">Austin</h5>
            <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
        </div>
    </div>
    <div class="card">
        <a href="/ads">
            <img class="card-img-top" src="../resources/img/texas-dallas.jpg" alt="dallas image cap">
        </a>
        <div class="card-body">
            <h5 class="card-title">Dallas</h5>
            <p class="card-text">This card has supporting text below as a natural lead-in to additional content.</p>
        </div>
    </div>
    <div class="card">
        <a href="/ads">
            <img class="card-img-top" src="../resources/img/texas-houston.jpg" alt="houston image cap">
        </a>
        <div class="card-body">
            <h5 class="card-title">Houston</h5>
            <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This card has even longer content than the first to show that equal height action.</p>
        </div>
    </div>
    <div class="card">
        <a href="/ads">
            <img class="card-img-top" src="../resources/img/texas-Sanantonio.jpg" alt="san antonio image cap">
        </a>
        <div class="card-body">
            <h5 class="card-title">San Antonio</h5>
            <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This card has even longer content than the first to show that equal height action.</p>
        </div>
    </div>
</div>


</body>
</html>
