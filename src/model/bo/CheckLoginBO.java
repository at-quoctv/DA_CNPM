package model.bo;


import model.dao.CheckLoginDAO;

public class CheckLoginBO {

	CheckLoginDAO check = new CheckLoginDAO();
	
	public boolean isValidAccount(String userName, String password) throws ClassNotFoundException {
		if ("".equals(userName) || "".equals(password)) {
			return false;
		} else {
			return check.isValidAccount(userName, password);
		}
	}
}
