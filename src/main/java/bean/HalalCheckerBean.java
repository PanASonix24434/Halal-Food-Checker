package bean;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

public class HalalCheckerBean {
    private Connection connection;

    public HalalCheckerBean(Connection connection) {
        this.connection = connection;
    }

    public String checkHalalStatus(List<String> ingredients) {
        try {
            for (String ingredient : ingredients) {
                String lowercaseIngredient = ingredient.toLowerCase();

                if (isInHalalList(lowercaseIngredient)) {
                    return "Halal";
                } else if (isInHaramList(lowercaseIngredient)) {
                    return "Haram";
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        System.out.println("No matching status found for the given ingredients: " + ingredients);

        return "Not Specified";
    }

    public String[] getIngredientDetails(String ingredient, String category) {
        String[] details = new String[2];

        try {
            String query = "SELECT name, description FROM " + category + " WHERE name = ?";
            try (PreparedStatement preparedStatement = connection.prepareStatement(query)) {
                preparedStatement.setString(1, ingredient);
                try (ResultSet resultSet = preparedStatement.executeQuery()) {
                    if (resultSet.next()) {
                        details[0] = resultSet.getString("name");
                        details[1] = resultSet.getString("description");
                    } else {
                        details[0] = "Not Found";
                        details[1] = "Not Found";
                    }
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        // Debug information
        System.out.println("Ingredient: " + ingredient);
        System.out.println("Name: " + details[0]);
        System.out.println("Description: " + details[1]);

        if ("Not Found".equals(details[0]) && "Not Found".equals(details[1])) {
            System.out.println("Ingredient not found in the " + category + " table.");
        }

        return details;
    }

    private boolean isInHalalList(String ingredient) throws SQLException {
        return isInCategory("halal", ingredient);
    }

    private boolean isInHaramList(String ingredient) throws SQLException {
        return isInCategory("haram", ingredient);
    }

    private boolean isInCategory(String category, String ingredient) throws SQLException {
        String query = "SELECT * FROM " + category + " WHERE name = ?";
        try (PreparedStatement preparedStatement = connection.prepareStatement(query)) {
            preparedStatement.setString(1, ingredient);
            try (ResultSet resultSet = preparedStatement.executeQuery()) {
                return resultSet.next();
            }
        }
    }
    public String checkAllHalal(List<String> ingredients) {
        try {
            for (String ingredient : ingredients) {
                String lowercaseIngredient = ingredient.toLowerCase();

                if (!isInHalalList(lowercaseIngredient)) {
                    return "Haram";
                }
            }

            return "Halal";
        } catch (SQLException e) {
            e.printStackTrace();
            return "Not Specified";
        }
    }

}
