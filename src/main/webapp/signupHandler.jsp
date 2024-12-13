<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    String confirmPassword = request.getParameter("confirmPassword");
    String email = request.getParameter("email");
    String gender = request.getParameter("gender");
    String mobile = request.getParameter("mobile");
    String dob = request.getParameter("dob");
    String address = request.getParameter("address");

    if (!password.equals(confirmPassword)) {
        out.println("<script type='text/javascript'>");
        out.println("alert('Passwords do not match!');");
        out.println("location='signup.jsp';");
        out.println("</script>");
    } else {
        boolean isUserCreated = false;



        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/FlightBookingDB", "root", "root");
            String query = "INSERT INTO users (username, password, email, gender, mobile, dob, address) VALUES (?, ?, ?, ?, ?, ?, ?)";
            PreparedStatement pstmt = con.prepareStatement(query);
            pstmt.setString(1, username);
            pstmt.setString(2, password);
            pstmt.setString(3, email);
            pstmt.setString(4, gender);
            pstmt.setString(5, mobile);
            pstmt.setString(6, dob);
            pstmt.setString(7, address);
            int rows = pstmt.executeUpdate();

            if (rows > 0) {
                isUserCreated = true;
            }

            pstmt.close();
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }

        if (isUserCreated) {
            response.sendRedirect("login.jsp");
        } else {
            out.println("<script type='text/javascript'>");
            out.println("alert('User registration failed. Please try again.');");
            out.println("location='signup.jsp';");
            out.println("</script>");
        }
    }
%>