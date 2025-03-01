<%@ page import="java.util.List, model.Course" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head><title>Available Courses</title></head>
<body>
<h2>Course List</h2>
<table border="1">
    <tr><th>ID</th><th>Name</th><th>Description</th><th>Register</th></tr>
    <%
        List<Course> courses = (List<Course>) request.getAttribute("courses");
        for (Course course : courses) {
    %>
    <tr>
        <td><%= course.getId() %></td>
        <td><%= course.getName() %></td>
        <td><%= course.getDescription() %></td>
        <td>
            <form action="register" method="post">
                <input type="hidden" name="student_id" value="1"> <!-- Change this dynamically -->
                <input type="hidden" name="course_id" value="<%= course.getId() %>">
                <input type="submit" value="Register">
            </form>
        </td>
    </tr>
    <% } %>
</table>
</body>
</html>
