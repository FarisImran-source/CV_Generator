<%-- 
    Document   : cvError
    Created on : 27 Oct 2026, 5:18:14 pm
    Author     : ACER
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CV Submission Error</title>

    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
</head>
<body class="error-page">

<div class="error-card">
    <div class="error-icon">&#9888;</div>

    <h1>Unable to Generate CV</h1>

    <p>
        Some required information is missing or invalid.
        Please return to the form and check your details.
    </p>

    <div class="error-message">
        <c:choose>
            <c:when test="${not empty errors}">
                <c:forEach items="${errors}" var="error"><div><c:out value="${error}" /></div></c:forEach>
            </c:when>
            <c:otherwise>Please check your CV information and try again.</c:otherwise>
        </c:choose>
    </div>

    <a class="back-button"
       href="${pageContext.request.contextPath}/cvForm.jsp">
        Return to CV Form
    </a>
</div>

</body>
</html>
