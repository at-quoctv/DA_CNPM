package model.dao;

import java.sql.SQLException;
import java.util.ArrayList;

import model.bean.QuangCao;
import model.bean.Tindang;
import model.bean.Vacxin;

public class CheckDAO extends BaseDAO {
	public boolean ThemQuangCao(String ten, String ngay, String han, String gia,String image) {
		getConnection();
		String sql = "insert into QuangCao(Ten,NgayDang,Han,Gia,Image) values("
				+ "'"
				+ ten
				+ "'"
				+ ",'"
				+ ngay
				+ "'"
				+ ",'"
				+ han
				+ "'"
				+ ",'"
				+ gia + "'" + ",'"
				+ image+"')";
		return isExcute(sql);
	}
	public boolean XoaQuangCao(String ma) {
		getConnection();
		String sql = "DELETE FROM QUANGCAO WHERE  Ten ="+"'" +ma+"'";
		return isExcute(sql);
	}

	public ArrayList<QuangCao> getQuangCao() {
		ArrayList<QuangCao> arrV = new ArrayList<QuangCao>();
		String sql = "select * from QUANGCAO";

		try {
			getConnection();
			rs = st.executeQuery(sql);
			while (rs.next()) {
				QuangCao v = new QuangCao();
				v.setMa(rs.getString(1));
				v.setTen(rs.getString(2));
				v.setNgay(rs.getString(3));
				v.setHan(rs.getInt(4));
				v.setGia(rs.getString(5));
				v.setImage(rs.getString(6));
				arrV.add(v);
			}
			closeConnection();
			return arrV;
		} catch (SQLException e) {
			System.out.println("hello");
			closeConnection();
			e.printStackTrace();
		}
		return null;
	}
	public boolean isThemVacxin(String ma, String ten, String sl, String mota,
			String gia, String tensx) {
		getConnection();
		String sql = "insert into VACXIN(MaVacxin,TenVacxin,SoLuongMui,MoTa,GiaVacxin,TenHangsx) values("
				+ "'"
				+ ma
				+ "'"
				+ ",'"
				+ ten
				+ "'"
				+ ",'"
				+ sl
				+ "'"
				+ ",'"
				+ mota + "'" + ",'" + gia + "'" + ",'" + tensx + "'" + ")";
		return isExcute(sql);
	}

	public ArrayList<Vacxin> getVacxin() {
		ArrayList<Vacxin> arrV = new ArrayList<Vacxin>();
		String sql = "select * from VACXIN";

		try {
			getConnection();
			rs = st.executeQuery(sql);
			while (rs.next()) {
				Vacxin v = new Vacxin();
				v.setMa(rs.getString(1));
				v.setTen(rs.getString(2));
				v.setSl(rs.getInt(3));
				v.setMt(rs.getString(4));
				v.setGia(rs.getInt(5));
				v.setTensx(rs.getString(6));
				arrV.add(v);
			}
			closeConnection();
			return arrV;
		} catch (SQLException e) {
			System.out.println("hello");
			closeConnection();
			e.printStackTrace();
		}
		return null;
	}

	public boolean isCapNhatVacxin(String ma, String ten, String sl,
			String mota, String gia, String tensx) {
		String sql = "update VACXIN set TenVacxin='"+ ten + "',SoluongMui='"+ 
			sl+ "',MoTa='"+ mota+ "',GiaVacxin='"+gia+"',TenhangSX='"+ tensx +"'"
				+" where Mavacxin='"+ ma+"'";
		System.out.println(sql);
		return isExcute(sql);
	}

	public ArrayList<String> getLichSu() {
		ArrayList<String> arrayList = new ArrayList<String>();
		String sql = "select KHACHHANG.MaKH, HoTenKH,TenBenh,VACXIN.MaVacxin,TenVacxin,SoLuongMui "
				+ " from KHACHHANG,VACXIN,LICHSUTIEMPHONG,PHONGBENH,BENH"
				+ " where KHACHHANG.MAKH = LICHSUTIEMPHONG.MaKH "
				+ " and VACXIN.MaVacxin = LICHSUTIEMPHONG.MaVacxin"
				+ " and VACXIN.MaVacxin = PHONGBENH.MaVacxin"
				+ " and BENH.MaBenh = PHONGBENH.MaBenh"
				;
		try {
			getConnection();
			System.out.println(sql);
			rs = st.executeQuery(sql);
			while (rs.next()) {
				String arr = "";
				arr+=rs.getString(1)
						+","+rs.getString(2)
						+","+rs.getString(3)
						+","+rs.getString(4)
						+","+rs.getString(5)
						+","+rs.getString(6);
				arrayList.add(arr);
			}
			closeConnection();
			return arrayList;
		} catch (SQLException e) {
			System.out.println("hello");
			closeConnection();
			e.printStackTrace();
		}
		return null;
	}

	public ArrayList<String> getThongKe() {
		ArrayList<String> arrayList = new ArrayList<String>();
		String sql = "select KHACHHANG.MaKH,HoTenKH,DiaChiKH,GiaVacxin from KHACHHANG,LICHSUTIEMPHONG, VACXIN"
				+ " where KHACHHANG.MaKH= LICHSUTIEMPHONG.MaKH"
				+ " and VACXIN.MaVacxin= LICHSUTIEMPHONG.MaVacxin";
		try {
			getConnection();
			System.out.println(sql);
			rs = st.executeQuery(sql);
			while (rs.next()) {
				String arr = "";
				arr+=rs.getString(1)
						+","+rs.getString(2)
						+","+rs.getString(3)
						+","+rs.getString(4);
				arrayList.add(arr);
			}
			closeConnection();
			return arrayList;
		} catch (SQLException e) {
			System.out.println("hello");
			closeConnection();
			e.printStackTrace();
		}
		return null;
	}



	public ArrayList<Tindang> getTindang() {
		ArrayList<Tindang> arrTD = new ArrayList<Tindang>();
		String sql = "select * from DANGTIN where DANGTIN.trangthai= false";

		try {
			getConnection();
			rs = st.executeQuery(sql);
			while (rs.next()) {
				Tindang td = new Tindang();
				td.setMa(rs.getString(1));
				td.setChuyenmuc(rs.getString(2));
				td.setVung(rs.getString(3));
				td.setBanla(rs.getString(4));
				td.setBandangtin(rs.getString(5));
				td.setTieuderao(rs.getString(6));
				
				td.setNoidung(rs.getString(7));
				td.setDienthoai(rs.getString(8));
				td.setGiatien(rs.getString(9));
				td.setTrangthai(rs.getBoolean(10));
				td.setTenthanhvien(rs.getString(11));
				arrTD.add(td);
			}
			closeConnection();
			return arrTD;
		} catch (SQLException e) {
			System.out.println("hello sai roi kia");
			closeConnection();
			e.printStackTrace();
			return null;
		}
		
	}

	public boolean isThemTindang(Tindang tindang) {
		getConnection();
		String sql = "insert into DANGTIN(chuyenmuc,vung,banla,bandangtin,tieuderao,noidung,dienthoai,giatien,trangthai,thanhvien) values("
				+ "'"
				+ tindang.getChuyenmuc()
				+ "'"
				+ ",'"
				+ tindang.getVung()
				+ "'"
				+ ",'"
				+ tindang.getBanla()
				+ "'"
				+ ",'"
				+ tindang.getBandangtin() 
				+ "'"
				+ ",'" 
				+ tindang.getTieuderao() 
				+ "'" 
				+ ",'" 
				+ tindang.getNoidung()
				+ "'" 
				+ ",'" 
				+ tindang.getDienthoai()
				+ "'" 
				+ ",'" 
				+ tindang.getGiatien()
				+ "'" 
				+ "," 
				+ tindang.getTrangthai()
				+ "" 
				+ ",'" 
				+ tindang.getTenthanhvien()
				+ "'"
				+ ")";
		return isExcute(sql);
	}

	public boolean isduyettin(String idtin) {
		boolean b=true;
		int id = Integer.parseInt(idtin);
			String sql = "update DANGTIN set DANGTIN.trangthai="+b +" where DANGTIN.matindang="+ id+"";
			System.out.println(sql);
			return isExcute(sql);
	}

	public boolean isxoatin(String idtin) {
		
		getConnection();
		String sql = "DELETE FROM DANGTIN WHERE matindang="+"" +idtin+"";
		return isExcute(sql);
	}

	public ArrayList<Tindang> getTindadang(String name) {
		ArrayList<Tindang> arrTDD = new ArrayList<Tindang>();
		String sql = "select * from DANGTIN where DANGTIN.trangthai= true" + " and thanhvien="+"'"+name+"'";

		try {
			getConnection();
			rs = st.executeQuery(sql);
			while (rs.next()) {
				Tindang td = new Tindang();
				td.setMa(rs.getString(1));
				td.setChuyenmuc(rs.getString(2));
				td.setVung(rs.getString(3));
				td.setBanla(rs.getString(4));
				td.setBandangtin(rs.getString(5));
				td.setTieuderao(rs.getString(6));
				
				td.setNoidung(rs.getString(7));
				td.setDienthoai(rs.getString(8));
				td.setGiatien(rs.getString(9));
				td.setTrangthai(rs.getBoolean(10));
				td.setTenthanhvien(rs.getString(11));
				arrTDD.add(td);
			}
			closeConnection();
			return arrTDD;
		} catch (SQLException e) {
			System.out.println("hello sai roi kia");
			closeConnection();
			e.printStackTrace();
			return null;
		}
		
	}
}
