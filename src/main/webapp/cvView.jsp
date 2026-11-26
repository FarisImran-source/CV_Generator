
<%-- 
    Document   : cvView
    Created on : 27 Oct 2026
    Author     : ACER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:if test="${empty cvData}"><c:redirect url="/cvForm.jsp" /></c:if>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>My Professional CV</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
</head>

<body class="cv-page">

<div class="preview-top"><a class="brand" href="${pageContext.request.contextPath}/cvForm.jsp"><span class="brand-mark">C</span><span>CV<span class="brand-light"> / </span>STUDIO</span></a><span class="header-note">YOUR CV PREVIEW</span></div>
<div class="preview-intro"><div><p class="eyebrow">READY FOR YOUR NEXT STEP</p><h2>Your story, on paper.</h2></div><p>Review your details, then print or save as a PDF.</p></div>
<div class="actions">
    <a class="back-button"
       href="${pageContext.request.contextPath}/cvForm.jsp">
        ← Create Another CV
    </a>

    <button class="print-button" onclick="window.print()">
        Print / Save as PDF
    </button>
</div>

<main class="cv">

    <header class="header">
        <p class="cv-label">CURRICULUM VITAE</p>

        <h1><c:out value="${cvData.fullName}" /></h1>

        <c:if test="${not empty cvData.professionalTitle}">
            <p class="professional-title">
                <c:out value="${cvData.professionalTitle}" />
            </p>
        </c:if>

        <div class="contact">
            <c:if test="${not empty cvData.email}">
                <span><c:out value="${cvData.email}" /></span>
            </c:if>

            <c:if test="${not empty cvData.phoneNumber}">
                <span><c:out value="${cvData.phoneNumber}" /></span>
            </c:if>

            <c:if test="${not empty cvData.linkedinGithub}">
                <c:choose>
                    <c:when test="${not empty cvData.safeProfileUrl}"><a href="<c:out value='${cvData.safeProfileUrl}' />"><c:out value="${cvData.linkedinGithub}" /></a></c:when>
                    <c:otherwise><span><c:out value="${cvData.linkedinGithub}" /></span></c:otherwise>
                </c:choose>
            </c:if>
        </div>
    </header>

    <c:if test="${not empty cvData.profileSummary}">
        <section class="section">
            <h2>PROFILE</h2>
            <div class="content">
                <c:out value="${cvData.profileSummary}" />
            </div>
        </section>
    </c:if>

    <section class="section">
        <h2>EDUCATION</h2>

        <div class="cv-item">
            <div class="item-title">
                <c:out value="${cvData.highestDegree}" />
            </div>

            <c:if test="${not empty cvData.majorField}">
                <div class="content">
                    <c:out value="${cvData.majorField}" />
                </div>
            </c:if>

            <div class="muted">
                <c:if test="${not empty cvData.institutionName}">
                    <c:out value="${cvData.institutionName}" />
                </c:if>

                <c:if test="${not empty cvData.graduationYear}">
                    <span class="item-date">
                        <c:out value="${cvData.graduationYear}" />
                    </span>
                </c:if>
            </div>
        </div>
    </section>

    <c:if test="${not empty cvData.jobTitle or not empty cvData.companyName or not empty cvData.duration or not empty cvData.responsibilities}">

        <section class="section">
            <h2>WORK EXPERIENCE</h2>

            <div class="cv-item">
                <c:if test="${not empty cvData.jobTitle}">
                    <div class="item-title">
                        <c:out value="${cvData.jobTitle}" />
                    </div>
                </c:if>

                <div class="muted">
                    <c:if test="${not empty cvData.companyName}">
                        <c:out value="${cvData.companyName}" />
                    </c:if>

                    <c:if test="${not empty cvData.duration}">
                        <span class="item-date">
                            <c:out value="${cvData.duration}" />
                        </span>
                    </c:if>
                </div>

                <c:if test="${not empty cvData.responsibilities}">
                    <div class="content">
                        <c:out value="${cvData.responsibilities}" />
                    </div>
                </c:if>
            </div>
        </section>
    </c:if>

    <c:if test="${not empty cvData.technicalSkillList}">
        <section class="section">
            <h2>TECHNICAL SKILLS</h2>

            <div class="skills">
                <c:forEach items="${cvData.technicalSkillList}" var="skill">
                    <span class="skill"><c:out value="${skill}" /></span>
                </c:forEach>
            </div>
        </section>
    </c:if>

    <c:if test="${not empty cvData.softSkillList}">
        <section class="section">
            <h2>SOFT SKILLS</h2>

            <div class="skills">
                <c:forEach items="${cvData.softSkillList}" var="skill">
                    <span class="skill"><c:out value="${skill}" /></span>
                </c:forEach>
            </div>
        </section>
    </c:if>

</main>

</body>
</html>
