<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="UTF-8">
    <title><c:out value="得点管理システム" /></title>
    <link rel="stylesheet" href="style.css">
    <c:if test="${not empty param.scripts}">
        <c:out value="${param.scripts}" escapeXml="false"/>
    </c:if>
</head>
<body>
<footer>
    <p>&copy; 2023 TIC
        <br>
        大原学園</p>
</footer>
</body>
</html>