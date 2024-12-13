package com.demo;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.UUID;

@WebServlet("/ForgotpasswordServlet")
public class ForgotpasswordServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    // Database configuration
    private static final String JDBC_URL = "jdbc:mysql://localhost:3306/FlightBookingDB";
    private static final String JDBC_USERNAME = "root";
    private static final String JDBC_PASSWORD = "root";

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");

        if ("sendLink".equals(action)) {
            String email = request.getParameter("email");
            if (emailExists(email)) {
                String token = generateResetToken(email);
                sendResetLink(email, token);
                response.getWriter().println("A password reset link has been sent to your email.");
            } else {
                response.getWriter().println("This email is not registered.");
            }
        } else if ("resetPassword".equals(action)) {
            String token = request.getParameter("token");
            String newPassword = request.getParameter("newPassword");
            if (validateToken(token)) {
                updatePassword(token, newPassword);
                response.getWriter().println("Your password has been successfully reset.");
            } else {
                response.getWriter().println("Invalid or expired token.");
            }
        }
    }

    private boolean emailExists(String email) {
        String query = "SELECT COUNT(*) FROM users WHERE email = ?";
        try (Connection conn = DriverManager.getConnection(JDBC_URL, JDBC_USERNAME, JDBC_PASSWORD);
             PreparedStatement pstmt = conn.prepareStatement(query)) {
             
            pstmt.setString(1, email);
            try (ResultSet rs = pstmt.executeQuery()) {
                if (rs.next()) {
                    int count = rs.getInt(1);
                    return count > 0;
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    private String generateResetToken(String email) {
        // Generate a secure token
        return UUID.randomUUID().toString();
    }

    private void sendResetLink(String email, String token) {
        String resetLink = "http://yourdomain.com/ResetPassword.jsp?token=" + token;
        // Implement logic to send the reset link via email
        // For example, using JavaMail API
        System.out.println("Reset link: " + resetLink); // For testing purposes
    }

    private boolean validateToken(String token) {
        // Implement logic to validate the token
        // This should involve checking the token stored in the database with its expiration time
        return true; // This is a stub. Replace with actual implementation.
    }

    private void updatePassword(String token, String newPassword) {
        // Implement logic to update the password in the database
        // This involves finding the user associated with the token and updating their password
        System.out.println("Password updated for token: " + token); // For testing purposes
    }
}
