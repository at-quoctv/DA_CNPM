package model.bo;

import java.util.ArrayList;

import model.bean.QuangCao;
import model.bean.Tindang;
import model.bean.Vacxin;
import model.dao.CheckDAO;

public class CheckBO {

	CheckDAO checDAO = new CheckDAO();
	public boolean isThemVacxin(String ma, String ten, String sl, String mota,
			String gia, String tensx) {
		return checDAO.isThemVacxin(ma,ten,sl,mota,gia,tensx);
	}

	public ArrayList<String> getThongKe() {
		// TODO Auto-generated method stub
		return checDAO.getThongKe();
	}
	public boolean isThemtindang(Tindang tindang) {
		return checDAO.isThemTindang(tindang);
	}
	public ArrayList<Tindang> getTindang() {
		return checDAO.getTindang();
	}
	public boolean isduyettin(String idtin,String key) {
		return checDAO.isduyettin(idtin,key);
	}
	public boolean isxoatin(String idtin) {
		return checDAO.isxoatin(idtin);
	}
	public ArrayList<Tindang> getTindadang( String name) {
		return checDAO.getTindadang(name);
	}
	public boolean ThemQuangcao(String ten, String ngay, String han, String gia, String image) {
		return checDAO.ThemQuangCao(ten, ngay, han, gia,image);
	}
	public boolean XoaQuangcao(String ma) {
		return checDAO.XoaQuangCao(ma);
	}
	public ArrayList<QuangCao> getQuangCao() {
		return checDAO.getQuangCao();
	}

}
