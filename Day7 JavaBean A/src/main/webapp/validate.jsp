<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<%-- create instance of javaBean class --%>
<jsp:useBean id="user" class="beans.UserBean" scope="session"/>
<!-- call all setters with setProperty-->
<jsp:setProperty name="user" property="*"/>
<h4>Route :${sessionScope.user.validateUser()}</h4>
<body>

</body>
</html>