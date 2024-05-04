# JiraRush - REST API Project

This project is a task tracking board similar to Jira or Trello, designed to monitor various activities ranging from project management to personal shopping lists.

## Project Details

This project is not built from scratch; it requires making changes to the existing codebase, adding new functionality, and configuring the infrastructure.


## Technologies

- Spring Boot
- Spring JPA
- Hibernate
- PostgreSQL
- Liquibase (Database version control)
- Spring Security
- Spring MVC
- Thymeleaf
- jQuery
- Swagger (API documentation)
- Caffeine (Cache)
- Lombok
- Mapstruct (Entity & DTO mapping)
- Spring Test
- JUnit
- Docker

## Tasks Checklist

| Task Number | Task Description                                                                     | Completion Status |
|-------------|--------------------------------------------------------------------------------------|------------------|
| 1           | Understand project structure (onboarding).                                           | ✅               |
| 2           | Remove social media integrations: VK, Yandex.                                        | ✅               |
| 3           | Externalize sensitive information into separate property files.                      | ✅               |
| 4           | Refactor tests to use in-memory H2 database instead of PostgreSQL.                   | ✅               |
| 5           | Write tests for all public methods in ProfileRestController.                         | ✅               |
| 6           | Refactor `com.javarush.jira.bugtracking.attachment.FileUtil#upload` method.          | ✅               |
| 7           | Add functionality: tag assignment to tasks (REST API + service implementation).      | ✅               |
| 8           | Implement time tracking methods in service layer.                                    | ✅               |
| 9           | Write Dockerfile for the main server.                                                | ✅               |
| 10          | Write docker-compose file to run server container along with database and nginx.     | ✅               |
| 11          | Implement localization in at least two languages for email templates and index.html. | ✅               |
| 12          | Rework the self-foreign recognition mechanism between front-end and back-end from JSESSIONID to JWT.| ❌|

## Instructions for Running the Project

1. **Setup Environment:**
  - Ensure you have the following tools installed:
    - Java Development Kit (JDK)
    - PostgreSQL (or Docker for running via container)
    - Docker (for building and running containers)
  - Set environment variables for sensitive information (database login, password, mail settings) or create a `.env` file to set these variables.

2. **Running the Application:**
  - Clone the project repository:
    ```
    git clone <URL of repository>
    ```
  - Build the project using Maven:
    ```
    mvn clean package
    ```
  - Run the application:
    - **Locally:**
      ```
      java -jar target/root.jar
      ```
    - **Using Docker:**
      ```
      docker-compose up --build
      ```

3. **Accessing API and Documentation:**
  - Swagger Documentation: `http://localhost:8080/api/swagger-ui.html`

Here you can see what controllers are, what methods these controllers have, expected input data, types of methods, etc. You can also send a request yourself. Authorize from different users (test data is written on the UI) and see what rights are required to execute a certain method.

### Project Structure

The project follows a Spring Modulith-like structure with distinct internal packages that should not be accessed from outside the top-level package.

This design is future-proof, allowing easy segmentation of the server into microservices if needed. Static frontend files are served through an Nginx server, particularly in production, though local setup is simplified.

In summary:
- **Internal Packages:** Contains encapsulated components not meant for external access.
- **Microservices Architecture:** Designed with flexibility for potential future microservices.
- **Static Frontend Files:** Served via Nginx in production.

This structure aims for scalability and maintainability, aligning with architectural principles while accommodating practical considerations.

