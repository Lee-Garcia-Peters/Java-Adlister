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
        <h1 class="display-4">Please select your city!</h1>
        <p class="lead">The Texas Adlister allows you to buy, sell, find jobs, and housing in the areas below!</p>
    </div>
</div>
<div class="card-group">
    <div class="card">
        <a href="/ads?place=Austin">
        <img class="card-img-top" src="../resources/img/Texas-Austin.jpg" alt="austin image cap">
        </a>
        <div class="card-body">
            <h5 class="card-title">Austin</h5>
            <p class="card-text">The capital city of Texas with a growing population of at least 1 million Austinites "keep it weird" by embracing a diverse melting pot of cultures from all around the world.</p>
        </div>
    </div>
    <div class="card">
        <a href="/ads?place=Dallas">
        <img class="card-img-top" src="../resources/img/texas-dallas.jpg" alt="dallas image cap">
        </a>
            <div class="card-body">
            <h5 class="card-title">Dallas</h5>
            <p class="card-text">Home of the Cowboys! Known for its dominant sectors of its diverse economy include defense, financial services, information technology, telecommunications, and transportation.</p>
        </div>
    </div>
    <div class="card">
        <a href="/ads?place=Houston">
        <img class="card-img-top" src="../resources/img/texas-houston.jpg" alt="houston image cap">
        </a>
            <div class="card-body">
            <h5 class="card-title">Houston</h5>
            <p class="card-text">The largest city in the state of Texas measured by populous with over 2.5 million residents! Houston's economy since the late 19th century has a broad industrial base in energy, manufacturing, aeronautics.</p>
        </div>
    </div>
    <div class="card">
        <a href="/ads?place=SanAntonio">
        <img class="card-img-top" src="../resources/img/texas-Sanantonio.jpg" alt="san antonio image cap">
        </a>
            <div class="card-body">
            <h5 class="card-title">San Antonio</h5>
            <p class="card-text">This is where the story of Codeup all began; the legendary bootcamp that teaches students full-stack web development and data science!</p>
        </div>
    </div>
</div>


</body>
</html>
