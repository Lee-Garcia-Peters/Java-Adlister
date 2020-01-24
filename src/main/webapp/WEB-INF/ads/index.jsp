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
<div class="container" style="margin-top: 5em">
    <h1>Here Are all the ads!</h1>

    <c:forEach var="ad" items="${ads}">
        <div class="col-md-6">
            <%! String link = "/ads/ad?id=";%>


            <h2>${ad.title}</h2>
            <p>${ad.description}</p>
            <p>${ad.id}</p>
            <a href="<%=link%>${ad.id}">link</a>
        </div>
    </c:forEach>

</div>

</body>
</html>
