<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h4>From 2nd Page : <%= session.getId() %></h4>
<%--Use EL Syntax to get different scoped attributes --%>
<h5>Page Scope Attribute : ${pageScope.nm1}</h5>
<h5>Request Scope Attribute : ${requestScope.nm2}</h5>
<h5>Session Scope Attribute : ${sessionScope.nm3}</h5>
<h5>Application(context) Scope Attribute : ${applicationScope.nm4}</h5>
</body>
</html>