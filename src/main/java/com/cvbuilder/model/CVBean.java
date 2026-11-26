
package com.cvbuilder.model;

import java.util.ArrayList;
import java.util.List;

public class CVBean {

    // Personal Information
    private String fullName;
    private String professionalTitle;
    private String email;
    private String phoneNumber;
    private String linkedinGithub;
    private String profileSummary;

    // Education
    private String highestDegree;
    private String institutionName;
    private String graduationYear;
    private String majorField;

    // Work Experience
    private String jobTitle;
    private String companyName;
    private String duration;
    private String responsibilities;

    // Skills
    private String technicalSkills;
    private String softSkills;

    // Default constructor
    public CVBean() {
    }

    // Getters and setters
    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public String getProfessionalTitle() {
        return professionalTitle;
    }

    public void setProfessionalTitle(String professionalTitle) {
        this.professionalTitle = professionalTitle;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getLinkedinGithub() {
        return linkedinGithub;
    }

    public void setLinkedinGithub(String linkedinGithub) {
        this.linkedinGithub = linkedinGithub;
    }

    public String getProfileSummary() {
        return profileSummary;
    }

    public void setProfileSummary(String profileSummary) {
        this.profileSummary = profileSummary;
    }

    public String getHighestDegree() {
        return highestDegree;
    }

    public void setHighestDegree(String highestDegree) {
        this.highestDegree = highestDegree;
    }

    public String getInstitutionName() {
        return institutionName;
    }

    public void setInstitutionName(String institutionName) {
        this.institutionName = institutionName;
    }

    public String getGraduationYear() {
        return graduationYear;
    }

    public void setGraduationYear(String graduationYear) {
        this.graduationYear = graduationYear;
    }

    public String getMajorField() {
        return majorField;
    }

    public void setMajorField(String majorField) {
        this.majorField = majorField;
    }

    public String getJobTitle() {
        return jobTitle;
    }

    public void setJobTitle(String jobTitle) {
        this.jobTitle = jobTitle;
    }

    public String getCompanyName() {
        return companyName;
    }

    public void setCompanyName(String companyName) {
        this.companyName = companyName;
    }

    public String getDuration() {
        return duration;
    }

    public void setDuration(String duration) {
        this.duration = duration;
    }

    public String getResponsibilities() {
        return responsibilities;
    }

    public void setResponsibilities(String responsibilities) {
        this.responsibilities = responsibilities;
    }

    public String getTechnicalSkills() {
        return technicalSkills;
    }

    public void setTechnicalSkills(String technicalSkills) {
        this.technicalSkills = technicalSkills;
    }

    public String getSoftSkills() {
        return softSkills;
    }

    public void setSoftSkills(String softSkills) {
        this.softSkills = softSkills;
    }

    // Keep validation in the model, and provide specific messages to the view.
    public List<String> getValidationErrors() {
        List<String> errors = new ArrayList<>();
        if (!hasText(fullName)) errors.add("Full name is required.");
        if (!hasText(email) || !email.trim().matches("^[A-Za-z0-9+_.-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}$"))
            errors.add("Enter a valid email address.");
        if (!hasText(highestDegree)) errors.add("Highest degree is required.");
        if (getTechnicalSkillList().isEmpty() && getSoftSkillList().isEmpty())
            errors.add("Enter at least one technical or soft skill.");
        return errors;
    }

    public boolean validate() { return getValidationErrors().isEmpty(); }

    private boolean hasText(String value) {
        return value != null && !value.trim().isEmpty();
    }

    private List<String> splitSkills(String value) {
        List<String> result = new ArrayList<>();
        if (value != null) {
            for (String skill : value.split(",")) {
                if (hasText(skill)) result.add(skill.trim());
            }
        }
        return result;
    }

    public List<String> getTechnicalSkillList() { return splitSkills(technicalSkills); }
    public List<String> getSoftSkillList() { return splitSkills(softSkills); }

    // Only allow HTTP(S) profile links; untrusted text is escaped in the JSP.
    public String getSafeProfileUrl() {
        if (!hasText(linkedinGithub)) return "";
        String url = linkedinGithub.trim();
        return url.matches("(?i)^https?://[^\\s]+$") ? url : "";
    }
}
