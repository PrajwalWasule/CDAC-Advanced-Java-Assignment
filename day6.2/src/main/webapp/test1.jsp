<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%--Doesn't print--%>
<h4>From 1st Page</h4>
<%--create 4 different attributes & add them in different scopes --%>
<%
out.flush();
pageContext.setAttribute("nm1", 1234);
request.setAttribute("nm2", 12345);
session.setAttribute("nm3", 123456);
application.setAttribute("nm4", 1234567);
//forward clnt to the next page in the SAME request
//response.sendRedirect("test2.jsp");
RequestDispatcher rd= request.getRequestDispatcher("test2.jsp");
rd.include(request,response);
%>
<h5>contents after include</h5>
</body>
</html>