package bean;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class ReportBean {
    private Connection connection;

    public ReportBean(Connection connection) {
        this.connection = connection;
    }

    public void submitReport(String name, String email, String subject, String message) {
        try {
            String query = "INSERT INTO report (name, email, subject, message, date) VALUES (?, ?, ?, ?, NOW())";
            try (PreparedStatement preparedStatement = connection.prepareStatement(query)) {
                preparedStatement.setString(1, name);
                preparedStatement.setString(2, email);
                preparedStatement.setString(3, subject);
                preparedStatement.setString(4, message);
                preparedStatement.executeUpdate();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
