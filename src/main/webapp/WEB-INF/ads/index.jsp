<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Viewing All The Ads" />
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />

<div class="container" style="margin-top: 5em">
    <h1>Here Are all the ads!</h1>

    <c:forEach var="ad" items="${ads}">
        <div class="col-md-6">
            <%! String link = "/ad?id=";%>
            <h2>${ad.title}</h2>
            <p>${ad.description}</p>
            <p>${ad.id}</p>
            <a href="${link + ad.id}">link</a>
        </div>
    </c:forEach>

    <c:forEach var="category" items="${categories}">
        <div class="col-md-6">
            <h2>${category.name}</h2>
        </div>
    </c:forEach>
</div>

</body>
</html>
