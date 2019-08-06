package HighSchool;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class HighSchool {

    public static void main(String[] args) {
        try {
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/high_school","root","asd123");
            Statement statement = conn.createStatement();
            String query = "SELECT CONCAT(t.last_name, ', ', t.first_name) AS 'Teacher', s.weekday AS 'Day', s.hours AS 'Hours', c.course_name AS 'Course' FROM teachers t, schedule_time s, courses c WHERE c.id_teacher = "+2+" AND s.id_course = "+2+" AND t.id_teacher = "+2+";";
            ResultSet resultSet = statement.executeQuery(query);
            while (resultSet.next()) {
                System.out.println("Teacher: " + resultSet.getString("Teacher"));
                System.out.println("Day: " + resultSet.getString("Day"));
                System.out.println("Hours: " + resultSet.getTime("Hours"));
                System.out.println("Course: " + resultSet.getString("Course"));
                System.out.println("\n");
            }

        } catch (Exception e) {
            System.out.println("Error");
        }
    }
}
