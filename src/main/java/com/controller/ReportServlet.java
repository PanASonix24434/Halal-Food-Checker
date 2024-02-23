package com.controller;

import bean.ReportBean;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

@WebServlet("/ReportServlet")
public class ReportServlet extends HttpServlet {
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String subject = request.getParameter("subject");
        String message = request.getParameter("message");

        try (Connection connection = getConnection()) {
            ReportBean reportBean = new ReportBean(connection);
            reportBean.submitReport(name, email, subject, message);

            // Redirect to a confirmation page or display a success message
            response.sendRedirect("reportConfirmation.jsp");
        } catch (SQLException e) {
            e.printStackTrace();
            response.getWriter().write("Database connection error: " + e.getMessage());
        }
    }

    private Connection getConnection() throws SQLException {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            String url = "jdbc:mysql://localhost:3306/halal_scanner_new?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
            return DriverManager.getConnection(url, "root", "root");
        } catch (ClassNotFoundException e) {
            throw new SQLException("MySQL JDBC Driver not found", e);
        }
    }
}
