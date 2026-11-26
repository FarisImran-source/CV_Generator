
package com.cvbuilder.controller;

import com.cvbuilder.model.CVBean;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class CVServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        String action = request.getParameter("action");

        if ("sample".equals(action)) {
            CVBean cv = createSampleCV();
            request.setAttribute("cvData", cv);
            request.getRequestDispatcher("/cvView.jsp")
                    .forward(request, response);
        } else {
            response.sendRedirect(
                    request.getContextPath() + "/cvForm.jsp");
        }
    }

    @Override
    protected void doPost(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");

        CVBean cv = new CVBean();

        // Personal Information
        cv.setFullName(request.getParameter("fullName"));
        cv.setProfessionalTitle(
                request.getParameter("professionalTitle"));
        cv.setEmail(request.getParameter("email"));
        cv.setPhoneNumber(request.getParameter("phoneNumber"));
        cv.setLinkedinGithub(request.getParameter("linkedinGithub"));
        cv.setProfileSummary(request.getParameter("profileSummary"));

        // Education
        cv.setHighestDegree(request.getParameter("highestDegree"));
        cv.setInstitutionName(request.getParameter("institutionName"));
        cv.setGraduationYear(request.getParameter("graduationYear"));
        cv.setMajorField(request.getParameter("majorField"));

        // Work Experience
        cv.setJobTitle(request.getParameter("jobTitle"));
        cv.setCompanyName(request.getParameter("companyName"));
        cv.setDuration(request.getParameter("duration"));
        cv.setResponsibilities(
                request.getParameter("responsibilities"));

        // Skills
        cv.setTechnicalSkills(
                request.getParameter("technicalSkills"));
        cv.setSoftSkills(request.getParameter("softSkills"));

        if (cv.validate()) {
            request.setAttribute("cvData", cv);

            request.getRequestDispatcher("/cvView.jsp")
                    .forward(request, response);
        } else {
            request.setAttribute("errors", cv.getValidationErrors());

            request.getRequestDispatcher("/cvError.jsp")
                    .forward(request, response);
        }
    }

    private CVBean createSampleCV() {
        CVBean cv = new CVBean();

        cv.setFullName("Ali Riwayat Hakim Bin Abu Sinar");
        cv.setProfessionalTitle("Junior Software Developer");
        cv.setEmail("ali-abusinar@google.com");
        cv.setPhoneNumber("012-3456789");
        cv.setLinkedinGithub("https://google.com");
        cv.setProfileSummary(
                "A motivated graduate interested in software "
                + "development and web technologies.");

        cv.setHighestDegree("Bachelor's Degree");
        cv.setInstitutionName("Example University");
        cv.setGraduationYear("2026");
        cv.setMajorField("Computer Science");

        cv.setJobTitle("Intern Developer");
        cv.setCompanyName("Example Tech Sdn. Bhd.");
        cv.setDuration("January 2026 - June 2026");
        cv.setResponsibilities(
                "Assisted with website development and software testing.");

        cv.setTechnicalSkills("Java, HTML, CSS, SQL");
        cv.setSoftSkills("Communication, teamwork, problem-solving");

        return cv;
    }
}
