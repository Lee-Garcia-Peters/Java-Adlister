<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Welcome to Texas Adlister!" />
    </jsp:include>
</head>
<body>
    <jsp:include page="/WEB-INF/partials/navbar.jsp" />
    <div class="card-group" style="margin-top: 10em">
        <div class="card">
            <img class="card-img-top" src="../resources/img/buy-texas.jpg" alt="Buy image cap">
            <div class="card-body">
                <h5 class="card-title">Buy</h5>
                <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
            </div>
        </div>
        <div class="card">
            <img class="card-img-top" src="../resources/img/texas-sell.jpg" alt="Sell image cap">
            <div class="card-body">
                <h5 class="card-title">Sell</h5>
                <p class="card-text">This card has supporting text below as a natural lead-in to additional content.</p>
            </div>
        </div>
        <div class="card">
            <img class="card-img-top" src="../resources/img/texas-jobs.jpg" alt="Jobs image cap">
            <div class="card-body">
                <h5 class="card-title">Jobs</h5>
                <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This card has even longer content than the first to show that equal height action.</p>
            </div>
        </div>
        <div class="card">
            <img class="card-img-top" src="../resources/img/texas-housing.png" alt="Housing image cap">
            <div class="card-body">
                <h5 class="card-title">Housing</h5>
                <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This card has even longer content than the first to show that equal height action.</p>
            </div>
        </div>
    </div>

</body>
</html>
