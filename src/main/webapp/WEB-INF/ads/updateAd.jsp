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
    <h1>Update Ad</h1>
    <form action="/updateAd" method="post">
        <div class="form-group">
            <label for="title">Title</label>
            <input id="title" name="editTitle" class="form-control" type="text">
        </div>
        <div class="form-group">
            <label for="description">Description</label>
            <textarea id="description" name="editDescription" class="form-control" type="text"></textarea>
        </div>
        <div class="form-group">
            <label for="date">Date</label>
            <input id="date" name="editDate" class="form-control" type="date">
        </div>
        <input type="submit" class="btn btn-block btn-primary">
    </form>
</div>
</body>
</html>

