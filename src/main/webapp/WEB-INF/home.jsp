<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--<% var username = request.getSession().getAttribute("username"); %>--%>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Welcome to Texas Adlister!" />
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
            <h1 class="display-4">Welcome to the Texas Adlister!</h1>
            <p class="lead">The best place to find everything you need in the greatest state of America.</p>
        </div>
    </div>
    <div class="card-group">
        <div class="card">
            <a href="/location?item=buy" >
            <img class="card-img-top" src="../resources/img/buy-texas.jpg" alt="Buy image cap">
            </a>
            <div class="card-body">
                <h5 class="card-title">Buy</h5>
                <p class="card-text">Use the Texas Adlister to make purchases from other trusted users near you! Select from a variety of categories to find the best deal!</p>
            </div>
        </div>
        <div class="card">
            <a href="/location?item=sell">
            <img class="card-img-top" src="../resources/img/texas-sell.jpg" alt="Sell image cap">
            </a>
            <div class="card-body">
                <h5 class="card-title">Sell</h5>
                <p class="card-text">You can sell virtually anything you'd like on the Texas Adlister! Select the category that works best and match your city!</p>
            </div>
        </div>
        <div class="card">
            <a href="/location?item=jobs">
            <img class="card-img-top" src="../resources/img/texas-jobs.jpg" alt="Jobs image cap">
            </a>
            <div class="card-body">
                <h5 class="card-title">Jobs</h5>
                <p class="card-text">The Texas Adlister is one of the hottest websites valued amongst employer partners! Find an opportunity and change your career path!</p>
            </div>
        </div>
        <div class="card">
            <a href="/location?item=housing">
            <img class="card-img-top" src="../resources/img/texas-housing.png" alt="Housing image cap">
            </a>
            <div class="card-body">
                <h5 class="card-title">Housing</h5>
                <p class="card-text">Find your new home with the Texas Adlister! Choose from all the major cities in Texas and start fresh with your new beginning!</p>
            </div>
        </div>
    </div>

</body>
</html>
