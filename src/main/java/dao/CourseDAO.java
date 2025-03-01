package dao;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import model.Course;

public class CourseDAO {
    public List<Course> getAllCourses() {
        List<Course> courses = new ArrayList<>();
        try (Connection conn = DBUtil.getConnection();
             Statement stmt = conn.createStatement();
             ResultSet rs = stmt.executeQuery("SELECT * FROM courses")) {

            while (rs.next()) {
                Course course = new Course(rs.getInt("id"), rs.getString("name"), rs.getString("description"));
                courses.add(course);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return courses;
    }
}
