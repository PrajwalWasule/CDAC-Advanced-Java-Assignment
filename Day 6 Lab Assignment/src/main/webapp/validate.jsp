<%@page import="pojos.User"%>
<%@page import="java.util.HashMap"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Validation Page</title>
</head>
<%!//JSP declaration block to add variables & methods(implicit : private)
	HashMap<String, User> userMap;

	//Overwrite Jspinit 
	public void jspInit() {
		System.out.println("in init" + Thread.currentThread());
		//create n populate the map
		userMap = new HashMap<>();
		userMap.put("Rama Vaidya", new User("Rama Vaidya", "1234", 30));
		userMap.put("Mihir Rao", new User("Mihir Rao", "5678", 34));
	}%>
<body>
	<%
System.out.println("in Scriplet : "+Thread.currentThread());
//read req parameter
//HM based validation (get, chk password)
//new user (no name--> register link)
//invalid pwd-->retry link
//successful login -- store user poja in session scope
//redirect
String name=request.getParameter("em");
String password=request.getParameter("pass");


User newUser=userMap.get(name);
if(newUser!=null)
{
	//name exists now check for password
	if((newUser.getPassword()).equals(password))
	{
		//login Succesfully
		session.setAttribute("user_dtls", newUser);
		response.sendRedirect("details.jsp");
			
	}
	else
	{
		//invalid password, retry link
		%>
	<h4 style="color: red;">
		Invalid Password!! please <a href="login.jsp"> Retry </a>
	</h4>
	<%
		
	}
}
else{
	%>
	<h4 style="color: red;">
		New User !!! Do you want to <a href="register.jsp"> Register </a>
	</h4>
	<%
}
%>

</body>
<%!
public void jspDestroy() {
	System.out.println("in Destroy : " + Thread.currentThread());
}%>
</html>