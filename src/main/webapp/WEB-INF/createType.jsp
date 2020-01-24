<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
        <h1 class="display-4">Select what type of ad to create!</h1>
        <p class="lead">With the Texas Adlister you can create ads to buy, sell, find jobs, and housing!</p>
    </div>
</div>
<div class="card-group">
    <div class="card">
        <a href="/createLocation?create=1" >
            <img class="card-img-top" src="../resources/img/buy-texas.jpg" alt="Buy image cap">
        </a>
        <div class="card-body">
            <h5 class="card-title">Buy</h5>
            <p class="card-text">Use the Texas Adlister to make purchases from other trusted users near you! Select from a variety of categories to find the best deal!</p>
        </div>
    </div>
    <div class="card">
        <a href="/createLocation?create=2">
            <img class="card-img-top" src="../resources/img/texas-sell.jpg" alt="Sell image cap">
        </a>
        <div class="card-body">
            <h5 class="card-title">Sell</h5>
            <p class="card-text">You can sell virtually anything you'd like on the Texas Adlister! Select the category that works best and match your city!</p>
        </div>
    </div>
    <div class="card">
        <a href="/createLocation?create=4">
            <img class="card-img-top" src="../resources/img/texas-jobs.jpg" alt="Jobs image cap">
        </a>
        <div class="card-body">
            <h5 class="card-title">Jobs</h5>
            <p class="card-text">The Texas Adlister is one of the hottest websites valued amongst employer partners! Find an opportunity and change your career path!</p>
        </div>
    </div>
    <div class="card">
        <a href="/createLocation?create=3">
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
