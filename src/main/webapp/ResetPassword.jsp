<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
    <title>Reset Password</title>
</head>
<body>
    <h2>Reset Password</h2>
    <form action="ForgotPasswordServlet" method="post">
        <input type="hidden" name="action" value="resetPassword">
        <input type="hidden" name="token" value="${param.token}">
        <label for="newPassword">Enter your new password:</label><br>
        <input type="password" id="newPassword" name="newPassword" required><br><br>
        <input type="submit" value="Reset Password">
    </form>
</body>
</html>
