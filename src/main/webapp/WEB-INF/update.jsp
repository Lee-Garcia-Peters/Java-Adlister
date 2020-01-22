<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Your Profile" />
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

<div class="jumbotron jumbotron-fluid" style="margin-top: 3em">
    <div class="container">
        <h1 class="display-4">Edit your profile!</h1>
        <p class="lead">Username: ${sessionScope.user.username}</p>
        <p class="lead">Email: ${sessionScope.user.email}</p>
        <p class="lead">Password: ${sessionScope.user.password}</p>
        <a href="/update">
            <button type="button" class="btn btn-primary btn-lg">Confirm update</button>
        </a>
    </div>
</div>



</body>
</html>
