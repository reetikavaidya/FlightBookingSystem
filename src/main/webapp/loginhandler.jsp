<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    boolean isValidUser = false;

    
   

    try {
    	 Class.forName("com.mysql.cj.jdbc.Driver");
     	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/FlightBookingDB", "root", "root");
         String query = "SELECT * FROM users WHERE username = ? AND password = ?";
        PreparedStatement pstmt = conn.prepareStatement(query);
        pstmt.setString(1, username);
        pstmt.setString(2, password);
        ResultSet rs = pstmt.executeQuery();

        if (rs.next()) {
            isValidUser = true;
        }

        rs.close();
        pstmt.close();
        conn.close();
    } catch (Exception e) {
        e.printStackTrace();
    }

    if (isValidUser) {
        session.setAttribute("username", username);
        response.sendRedirect("index.jsp");
    } else {
        out.println("<script type='text/javascript'>");
        out.println("alert('Invalid username or password');");
        out.println("location='login.jsp';");
        out.println("</script>");
    }
%>