package model.bo;

import model.dao.UpdatettDAO;

public class UpdatettBO {
	UpdatettDAO updatettDAO = new UpdatettDAO();

		
	public void updatett(String update, String ten, String sodienthoai,
			String diachi, String banla) {
		updatettDAO.updatett(update,ten,sodienthoai,diachi,banla);
		
	}

}
