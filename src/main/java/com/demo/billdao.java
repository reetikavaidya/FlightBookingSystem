package com.demo;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class billdao {
    public static int save(bill b) {
        int status = 0;
        try {
            // Load the JDBC driver
            Class.forName("com.mysql.cj.jdbc.Driver");
            
            // Establish a connection
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/FlightBookingDB", "root", "root");
            
            // Prepare the SQL statement
            String query = "INSERT INTO bills (flight_no, departure, destination, departureDate, returnDate, ticketPrice, category, passengers, discount) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";
            PreparedStatement ps = con.prepareStatement(query);
            
            // Set the values
            ps.setString(1, b.getFlight_no());
            ps.setString(2, b.getDeparture());
            ps.setString(3, b.getDestination());
            ps.setString(4, b.getDepartureDate());
            ps.setString(5, b.getReturnDate());
            ps.setDouble(6, b.getTicketPrice());
            ps.setString(7, b.getCategory());
            ps.setInt(8, b.getPassengers());
            ps.setDouble(9, b.getDiscount());
            
            // Execute the query
            status = ps.executeUpdate();
            
            // Close the connection
            ps.close();
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return status;
    }
}
