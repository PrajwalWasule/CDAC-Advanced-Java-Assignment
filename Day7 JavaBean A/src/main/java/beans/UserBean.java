package beans;

import java.sql.SQLException;

import dao.UserDaoImpl;
import pojos.User;

public class UserBean {
	//create reference
	private UserDaoImpl userDao;//dependencies
	private User userDetails;
	private String email;
	private String pass;
	public UserBean() throws SQLException {
		// create a instance
	   userDao=new UserDaoImpl();
	   System.out.println("create new bean");
	}
	public UserDaoImpl getUserDao() {
		return userDao;
	}
	public void setUserDao(UserDaoImpl userDao) {
		this.userDao = userDao;
	}
	public User getUserDetails() {
		return userDetails;
	}
	public void setUserDetails(User userDetails) {
		this.userDetails = userDetails;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	
	public String validateUser() throws SQLException
	{
		userDetails=userDao.authenticateUser(email, pass);
		if(userDetails==null)
			return "login!";
		if(userDetails.getRole().equals("admin"))
			return "admin page";
		if(userDetails.isVotingStatus())
			return "logout";
		return "candidate_list page";
			
		
		
	}
	

}
