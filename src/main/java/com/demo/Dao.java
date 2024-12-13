package com.demo;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class Dao {

	public static Connection getConnection() {
		Connection con = null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/FlightBookingDB", "root", "root");
		} catch (Exception e) {
			System.out.println(e);
		}
		return con;
	}

	public static List<Flight> getallRecord(String from, String to, String travelDate, String category) {
		List<Flight> flights = new ArrayList<>();
		try {
			Connection connection = Dao.getConnection();
			String sql = "SELECT * FROM Flights WHERE departure_city = ? AND arrival_city = ? AND departure_date = ?";

			// Adjust SQL query based on category if necessary
			if (category != null && !category.isEmpty()) {
				sql += " AND category = ?";
			}

			PreparedStatement statement = connection.prepareStatement(sql);
			statement.setString(1, from);
			statement.setString(2, to);
			statement.setString(3, travelDate);

			if (category != null && !category.isEmpty()) {
				statement.setString(4, category);
			}

			ResultSet rs = statement.executeQuery();

			while (rs.next()) {
				Flight flight = new Flight();
				flight.setId(rs.getInt("id"));
				flight.setFlight_number(rs.getString("flight_number"));
				flight.setDeparture_city(rs.getString("departure_city"));
				flight.setArrival_city(rs.getString("arrival_city"));
				flight.setDeparture_date(rs.getString("departure_date"));
				flight.setPrice(rs.getDouble("price"));
				flight.setCategory(rs.getString("category"));

				flights.add(flight);

			}

		}

		catch (Exception e) {
			e.printStackTrace();
		}
		return flights;

	}
	
	 public static Flight getRecordById(int id) {
		 Flight e= new Flight();
     	
     	  try {
         	     Connection con = Dao.getConnection();
				PreparedStatement ps= con.prepareStatement("select * from Flights where id=?");
				
				   ps.setInt(1, id);
				
				
				ResultSet rs =ps.executeQuery();
				  
				  
				 
				  
				  if(rs.next())
				  {
					   
					      e.setId(rs.getInt(1));
					      e.setFlight_number(rs.getString("flight_number"));
							e.setDeparture_city(rs.getString("departure_city"));
							e.setArrival_city(rs.getString("arrival_city"));
							e.setDeparture_date(rs.getString("departure_date"));
							e.setPrice(rs.getDouble("price"));
							e.setCategory(rs.getString("category"));
					      
					  
					      
				  }
				  
				  
				
				
				
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
			return e;
     	
     	
     	
     	
     	
     	
     	 
     }

}
