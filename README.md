# CV Studio — Dynamic Online CV Builder

A Java web application that creates a clean, printable curriculum vitae (CV). Users can enter their own information or preview a sample CV without filling in the form.

This project was developed for the **CSC584 Enterprise Programming individual assignment**.

## Features

- Enter personal information, education, work experience and skills.
- Generate a formatted CV from the submitted information.
- Preview a sample CV using preset data.
- Check required fields and display validation errors.
- Print the generated CV or save it as a PDF using the browser.
- Use a responsive layout for different screen sizes.

## Technologies

- Java and Maven
- Java Servlets (`javax.servlet`)
- JSP, JSTL, HTML and CSS
- Apache Tomcat 9
- Apache NetBeans

No database is required. CV data is stored in a Java Bean and passed between components using request scope; it is not permanently saved.

## MVC architecture

- **Model — `CVBean.java`:** Stores CV details and validates required information.
- **View — JSP and CSS:** Displays the input form, generated CV and validation errors.
- **Controller — `CVServlet.java`:** Handles requests, populates the bean and forwards to the appropriate view.

### Application flow

1. For a custom CV, the form sends a **POST** request to the servlet. The servlet populates the bean and validates the input. It then forwards to the CV view or the error page.
2. For a sample CV, the sample link sends a **GET** request with `action=sample`. The servlet creates a bean with preset data and forwards it to the same CV view.

## Project structure

```text
DynamicCVProject/
├── pom.xml
└── src/main/
    ├── java/com/cvbuilder/
    │   ├── controller/CVServlet.java
    │   └── model/CVBean.java
    └── webapp/
        ├── WEB-INF/web.xml
        ├── css/style.css
        ├── cvForm.jsp
        ├── cvView.jsp
        └── cvError.jsp
```

## Running the project in NetBeans

### Requirements

- JDK 21
- Apache NetBeans with Maven support
- Apache Tomcat 9 configured in NetBeans
- Internet access for Maven to download dependencies on the first build

### Steps

1. Open NetBeans and select **File → Open Project**.
2. Choose the project folder containing `pom.xml`.
3. Configure Apache Tomcat 9 as the project server if it is not already selected.
4. Right-click the project and select **Clean and Build**.
5. Right-click the project and select **Run**.
6. The application should open in your browser with the CV form as the welcome page.

Tomcat 9 uses the `javax.servlet` namespace. The project uses JSTL for presenting data in JSP pages.

## Validation

The application checks that the user provides:

- A full name
- A valid email address
- A highest degree
- At least one technical or soft skill

If the information is invalid, the application displays an error message.

## Author

**Faris Imran**
