<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="../header.html" %>
<head>
    <meta charset="UTF-8">
    <title><c:out value="得点管理システム" /></title>
    <link rel="stylesheet" href="style.css">
    <c:if test="${not empty param.scripts}">
        <c:out value="${param.scripts}" escapeXml="false"/>
    </c:if>
</head>

<header>
<h1>得点管理システム</h1>
</header>

<div id="wrapper">
</div>

<body>
<h2>見出しデザイン</h2>
</body>

<footer>
2023 @TIC<br>
大原学園
</footer>
<%@include file="../footer.html" %>