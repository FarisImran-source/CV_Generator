<%-- 
    Document   : cvForm
    Created on : 27 Oct 2026, 5:12:40 pm
    Author     : ACER
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dynamic CV Builder</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
</head>
<body class="form-page">

<div class="page-shell">
    <header class="site-header"><a class="brand" href="${pageContext.request.contextPath}/cvForm.jsp"><span class="brand-mark">C</span><span>CV<span class="brand-light"> / </span>STUDIO</span></a><span class="header-note">A LITTLE SPACE FOR YOUR BIG NEXT STEP</span></header>
    <div class="intro-block"><p class="eyebrow"><span></span> YOUR STORY, BEAUTIFULLY TOLD</p><h1>Make your next<br><em>move memorable.</em></h1><p class="intro">A thoughtful CV starts here. Add your details and create a clean, professional résumé in minutes.</p><a class="preview-link" href="${pageContext.request.contextPath}/CVServlet?action=sample">Explore a sample CV <span aria-hidden="true">↗</span></a></div>
<div class="container">
    <div class="form-top"><div><p class="eyebrow">THE DETAILS</p><h2>Let’s build your CV.</h2><p>Share the essentials. We’ll take care of the rest.</p></div><span class="required-note">* Required fields</span></div>

    <form action="${pageContext.request.contextPath}/CVServlet"
          method="post">

        <div class="section-heading"><span class="section-number">01</span><div><h2>Personal Information</h2><p>The basics, first.</p></div></div>
        <div class="form-grid">

            <div class="field">
                <label for="fullName">Full Name *</label>
                <input type="text" id="fullName" name="fullName" required>
            </div>

            <div class="field">
                <label for="professionalTitle">Professional Title</label>
                <input type="text" id="professionalTitle"
                       name="professionalTitle">
            </div>

            <div class="field">
                <label for="email">Email Address *</label>
                <input type="email" id="email" name="email" required>
            </div>

            <div class="field">
                <label for="phoneNumber">Phone Number</label>
                <input type="tel" id="phoneNumber" name="phoneNumber">
            </div>

            <div class="field full-width">
                <label for="linkedinGithub">LinkedIn or GitHub URL</label>
                <input type="url" id="linkedinGithub"
                       name="linkedinGithub">
            </div>

            <div class="field full-width">
                <label for="profileSummary">Profile Summary</label>
                <textarea id="profileSummary"
                          name="profileSummary"></textarea>
            </div>

        </div>

        <div class="section-heading"><span class="section-number">02</span><div><h2>Education</h2><p>Where you learned.</p></div></div>
        <div class="form-grid">

            <div class="field">
                <label for="highestDegree">Highest Degree *</label>
                <input type="text" id="highestDegree"
                       name="highestDegree" required>
            </div>

            <div class="field">
                <label for="institutionName">Institution Name</label>
                <input type="text" id="institutionName"
                       name="institutionName">
            </div>

            <div class="field">
                <label for="graduationYear">Year of Graduation</label>
                <input type="text" id="graduationYear"
                       name="graduationYear">
            </div>

            <div class="field">
                <label for="majorField">Major / Field of Study</label>
                <input type="text" id="majorField" name="majorField">
            </div>

        </div>

        <div class="section-heading"><span class="section-number">03</span><div><h2>Work Experience</h2><p>What you’ve been working on.</p></div></div>
        <div class="form-grid">

            <div class="field">
                <label for="jobTitle">Most Recent Job Title</label>
                <input type="text" id="jobTitle" name="jobTitle">
            </div>

            <div class="field">
                <label for="companyName">Company Name</label>
                <input type="text" id="companyName" name="companyName">
            </div>

            <div class="field full-width">
                <label for="duration">Duration</label>
                <input type="text" id="duration" name="duration"
                       placeholder="e.g. January 2025 - June 2025">
            </div>

            <div class="field full-width">
                <label for="responsibilities">
                    Responsibilities and Achievements
                </label>
                <textarea id="responsibilities"
                          name="responsibilities"></textarea>
            </div>

        </div>

        <div class="section-heading"><span class="section-number">04</span><div><h2>Skills</h2><p>The strengths you bring.</p></div></div>
        <p class="helper-text">Add at least one technical or soft skill. Separate each with a comma.</p>
        <div class="form-grid">

            <div class="field">
                <label for="technicalSkills">Technical Skills</label>
                <textarea id="technicalSkills"
                          name="technicalSkills"
                          placeholder="e.g. Java, HTML, CSS, SQL"></textarea>
            </div>

            <div class="field">
                <label for="softSkills">Soft Skills</label>
                <textarea id="softSkills" name="softSkills"
                          placeholder="e.g. Teamwork, communication"></textarea>
            </div>

        </div>

        <button type="submit" class="submit-button">
            Create my CV <span aria-hidden="true">↗</span>
        </button>

    </form>

    <a class="sample-link"
       href="${pageContext.request.contextPath}/CVServlet?action=sample">
        View Sample CV
    </a>
</div>
<footer class="site-footer"><span>CV / STUDIO</span><span>Made for the next chapter.</span></footer>
</div>

</body>
</html>

