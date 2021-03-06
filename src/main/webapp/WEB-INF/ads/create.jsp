<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Create a new Ad" />
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
<div class="container" style="margin-top: 4em">
        <h1>Create a new Ad</h1>
        <div>
        <form action="/ads/create" method="post">
            <c:choose>
                <c:when test="${sessionScope.createType <3}">
                    <jsp:include page="/WEB-INF/partials/buySellCategories.jsp"/>
                </c:when>
                <c:when test="${sessionScope.createType ==3}">
                    <jsp:include page="/WEB-INF/partials/housingCategories.jsp"/>
                </c:when>
                <c:otherwise>
                    <jsp:include page="/WEB-INF/partials/jobsCategories.jsp" />
                </c:otherwise>
            </c:choose>
            <div class="form-group">
                <label for="title">Title</label>
                <input id="title" name="title" class="form-control" type="text">
            </div>
            <div class="form-group">
                <label for="description">Description</label>
                <textarea id="description" name="description" class="form-control" type="text"></textarea>
            </div>
            <div class="form-group">
                <label for="date">Date</label>
                <input id="date" name="date" class="form-control" type="date">
            </div>
            <input type="submit" class="btn btn-block btn-primary">
        </form>
        </div>
    </div>
</body>
</html>
