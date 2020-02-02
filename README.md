# CRUD in Student Module using Spring Boot, Rest API & MySQL
*by Amira Azman*

## Steps to Setup

**1. Clone the application**

```bash
git clone https://github.com/callicoder/spring-boot-mysql-rest-api-tutorial.git
```

**2. Create Mysql database**
```bash
create database notes_app
```

**3. Change mysql username and password as per your installation**

+ open `src/main/resources/application.properties`

+ change `spring.datasource.username` and `spring.datasource.password` as per your mysql installation

**4. Build and run the app using maven**

```bash
mvn package
java -jar target/easy-notes-1.0.0.jar
```

Alternatively, you can run the app without packaging it using -

```bash
mvn spring-boot:run
```

The app will start running at <http://localhost:8080>.

## RESTful API Server ##

    GET /api/notes --> view all students
    
    POST /api/notes
    
    GET /api/notes/{noteId}
    
    PUT /api/notes/{noteId}
    
    DELETE /api/notes/{noteId}

**2. API Description for Problem & SubProblem**

METHOD | PATH | DESCRIPTION 
------------|-----|------------
GET | /api/problem/{code} | get all Problem-Subproblem with code
POST | /api/problem/{code} | save Problem with code
DELETE | /api/problem/{code}/all | delete all Problem-Subproblem with code
POST | /api/subproblem | save Subproblem



