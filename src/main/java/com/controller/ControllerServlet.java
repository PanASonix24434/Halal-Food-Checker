package com.controller;

import bean.HalalCheckerBean;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Arrays;
import java.util.List;

@WebServlet("/ControllerServlet")
public class ControllerServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public ControllerServlet() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");

        if ("aboutUs".equals(action)) {
            request.getRequestDispatcher("about.jsp").forward(request, response);
        } else if ("Home".equals(action)) {
            request.getRequestDispatcher("Home.jsp").forward(request, response);
        } else if ("checkIngredient".equals(action)) {
            request.getRequestDispatcher("checkIngredient.jsp").forward(request, response);
        }else if ("restaurant".equals(action)) {
            request.getRequestDispatcher("restaurant.jsp").forward(request, response);
        }
        else if ("allHalal".equals(action)) {
            request.getRequestDispatcher("checkAllHalal.jsp").forward(request, response);
        }
        else if ("contact".equals(action)) {
            request.getRequestDispatcher("ReportForm.jsp").forward(request, response);
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    String action = request.getParameter("action");

    if ("checkHalalStatus".equals(action)) {
        String userInput = request.getParameter("userInput");

        try (Connection connection = getConnection()) {
            HalalCheckerBean halalChecker = new HalalCheckerBean(connection);
            List<String> ingredients = Arrays.asList(userInput.split("\\s*,\\s*"));
            String status = halalChecker.checkHalalStatus(ingredients);
            request.setAttribute("halalStatus", status);
            request.getRequestDispatcher("result.jsp").forward(request, response);
        } catch (SQLException e) {
            e.printStackTrace();
            response.getWriter().write("Database connection error: " + e.getMessage());
        }
    } else if ("checkAllHalal".equals(action)) {
        String userInput = request.getParameter("ingredients");

        try (Connection connection = getConnection()) {
            HalalCheckerBean halalChecker = new HalalCheckerBean(connection);
            List<String> ingredients = Arrays.asList(userInput.split("\\s*,\\s*"));
            String status = halalChecker.checkAllHalal(ingredients);
            request.setAttribute("halalStatus", status);
            request.getRequestDispatcher("resultAllHalal.jsp").forward(request, response);
        } catch (SQLException e) {
            e.printStackTrace();
            response.getWriter().write("Database connection error: " + e.getMessage());
        }
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
