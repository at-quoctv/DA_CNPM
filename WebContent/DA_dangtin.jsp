<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<style type="text/css">
.tt tr td {
	padding-top: 10px;
	padding: 10px 10px;
	font-size: 16pt;
}

.sub {
	margin-top: 20px;
	margin-bottom: 20px;
	width: 150px;
	font-size: 14pt;
	background-color: green;
	color: white;
	height: 35px;
}

.text {
	font-size: 14pt;
}

.loi {
	color: red;
}

.content {
	padding-top: 10px;
	padding-bottom: 20px;
	background-image: url(images/default.png);
	width: 100%;
}

#main {
	padding-left: 5%;
}

.red {
  color: red !important;
}
</style>
</head>
<script type="text/javascript">
	function KiemTra() {

		var frm = document.forms["dangtin"];

		//---------
		var chuyenmuc = frm["chuyenmuc"].value;
		if (chuyenmuc == "cmuc") {
			document.getElementById("loi-chuyenmuc").innerHTML = "Vui lòng chọn chuyên mục";
			return false;
		} else {
			document.getElementById("loi-chuyenmuc").innerHTML = "";
		}
		
		//---------
		var chuyenmuc = frm["vung"].value;
		if (chuyenmuc == "ivung") {
			document.getElementById("loi-vung").innerHTML = "Vui lòng chọn vùng";
			return false;
		} else {
			document.getElementById("loi-vung").innerHTML = "";
		}
		//-----------
		var tieude = frm["tieude"].value;
		if (tieude == "") {
			document.getElementById("loi-tieude").innerHTML = "Điền tiêu đề rao";
			return false;
		} else {
			if(tieude.length > 20){
				document.getElementById("loi-tieude").innerHTML = "Yêu cầu nhập dưới 20 kí tự";
				return false;
			}
			
			document.getElementById("loi-tieude").innerHTML = "";
		}

		//---------
		var noidung = frm["noidung"].value;
		if (noidung == "") {
			document.getElementById("loi-noidung").innerHTML = "Điền nội dung nội dung";
			return false;
		} else {
			if(noidung.length < 6){
				document.getElementById("loi-noidung").innerHTML = "Yêu cầu nhập tối thiểu 6 kí tự";
				return false;
			}
			document.getElementById("loi-noidung").innerHTML = "";
		}
		//-----------

		//---------
		var sdt = frm["sdt"].value;
		if (sdt == "") {
			document.getElementById("loi-sdt").innerHTML = "Điền số điện thoại";
			return false;
		} else {
			if (isNaN(sdt)) {
				document.getElementById("loi-sdt").innerHTML = "Nhập sai, nhập lại số điện thoại";
				return false;
			}
			document.getElementById("loi-sdt").innerHTML = "";
		}
		//-----------
		
		
		var gia = frm["gia"].value;
		if (gia == "") {
			document.getElementById("loi-gia").innerHTML = "Điền giá tiền";
			return false;
		} else {
			if (isNaN(gia)) {
				document.getElementById("loi-gia").innerHTML = "Nhập sai, nhập lại giá tiền";
				return false;
			} else {
				if((Integer.parseInt(gia)) > 1000){
					document.getElementById("loi-gia").innerHTML = "Giá tiền tối thiểu là 1000VND";
					return false;
				}
			}
			document.getElementById("loi-gia").innerHTML = "";
		}
		
		
		
		return true;
	}
</script>
<body>

<% String a =(String)session.getAttribute("userName");%>
	<div id="main">
		<jsp:include page="header.jsp"></jsp:include>
		<div class="head-link" align="center">
				<ul>
					<li><a href="ShowTrangChu?">Trang chủ</a></li>
					<li><a href="DA_showdangtin?">>Đăng tin</a></li>
					
				</ul>
		</div> 
		<div class="content" align="center">
			<h2>Đăng tin rao vặt</h2>
			<form action="DA_checkdangtin" method="post" name="dangtin"
				onsubmit="return KiemTra();">
				<table class="tt">
					<tr>
							<td>Chuyên mục<b class="red">*</b> </td>
							<td><select name="chuyenmuc" class="text" id="tg">
								
									<option value="cmuc" selected="selected">«Chọn danh mục»</option>
	
		<option value="xeco" style="background-color:#dcdcc3;font-weight:bold;" disabled="disabled" >
			
				-- Xe cộ --
	        	
		</option> 
	
		<option value="xe may">
			Xe máy
			
		</option> 
	
		<option value="o to">
			Ô tô
			
		</option> 
	
		<option value="xe dap">
			Xe đạp
			
		</option> 
	
		<option value="xe tai">
			Xe tải
			
		</option> 
	
		<option value="xe khac">
			Khác
			
		</option> 
	
		<option value="batdongsan" style="background-color:#dcdcc3;font-weight:bold;" disabled="disabled">
			
				-- Bất động sản --
	        	
		</option> 
	
		<option value="can ho_chung cu">
			Căn hộ/Chung cư
			
		</option> 
	
		<option value="nha o">
			Nhà ở
			
		</option> 
	
		<option value="dat">
			Đất
			
		</option> 
	
		<option value="van phong">
			Văn phòng, Mặt bằng kinh doanh
			
		</option> 
	
		<option value="phong tro">
			Phòng trọ
			
		</option> 
	
		<option value="dodientu" style="background-color:#dcdcc3;font-weight:bold;" disabled="disabled">
			
				-- Đồ điện tử --
	        	
		</option> 
	
		<option value="dt di dong">
			Điện thoại di động
			
		</option> 
	
		<option value="may tính bang">
			Máy tính bảng
			
		</option> 
	
		<option value="may tinh_laptop">
			Máy tính, Laptop
			
		</option> 
	
		<option value="may anh">
			Máy ảnh, Máy quay
			
		</option> 
	
		<option value="tivi">
			Tivi, Loa, Amply, Máy nghe nhạc
			
		</option> 
	
		<option value="phu kien">
			Phụ kiện, Linh kiện
			
		</option> 
	
		
		<option value="vat dung gia dinh" style="background-color:#dcdcc3;font-weight:bold;" disabled="disabled">
			
				-- Vật dụng gia đình --
	        	
		</option> 
	
		<option value="tu lanh">
			Tủ lạnh, Máy lạnh, Máy giặt
			
		</option> 
	
		<option value="cay canh">
			Nội ngoại thất, Cây cảnh
			
		</option> 
	
		<option value="do gia dung">
			Đồ gia dụng gia đình khác
			
		</option> 
			
	
		<option value="icacloaikhac" style="background-color:#dcdcc3;font-weight:bold;" disabled="disabled">
			
				-- Các loại khác --
	        	
		</option> 
	
		<option value="cac loai khac">
			Các loại khác
			
		</option> 
	
</select>  <span id="loi-chuyenmuc" class="loi"></span></td></tr>
<tr>

		<td>Vùng<b class="red">*</b> </td>
							<td><select style="width: 300px" name="vung" class="text" id="tg"
								onchange="myFunction()">
									<option value="ivung" selected="selected">«Chọn vùng»</option>
	        	
		
	
		<option value="hai chau">
			Quận Hải Châu
			
		</option> 
	
		<option value="thanh khe">
			Quận Thanh Khê
			
		</option> 
	
		<option value="son tra">
			Quận Sơn Trà
			
		</option> 
	
		<option value="ngu hanh son">
			Quận Ngũ Hành Sơn
			
		</option> 
	
		<option value="lien chieu">
			QuậnLiên Chiểu
			
		</option> 
		
		<option value="cam le">
			Quận Cẩm Lệ
			
		</option> 
	
</select> <span id="loi-vung" class="loi"></span> </td></tr>


							
				<tr>
				    		<td> Bạn là <b class="red" >*</b>  </td>
						    <td>
								<input name="banla" type="radio" value="Ca nhan" checked="checked" />Cá nhân
								<input name="banla" type="radio" value="Cong ty" />Công ty								
						    </td>
				</tr>	
				<tr>
						    <td> Bạn đăng tin <b class="red" >*</b>  </td>
						    <td>
								<input name="bdangtin" type="radio" value="can ban" checked="checked" />Cần bán
								<input name="bdangtin" type="radio" value="can mua" />Cần mua								
						    </td>
				</tr>					  
				<tr>
						<td>Tiêu đề rao<b class="red" >*</b> </td>
						<td><input style="width: 300px" type="text" name="tieude" class="text"> <span
							id="loi-tieude" class="loi"></span></td>
					</tr>
					<tr>
					
						<td>Nội dung<b class="red" >*</b></td>
						<td><textarea name="noidung" rows="5" cols="39"  placeholder="Đây là vùng nhập text" maxlength="20"></textarea>
						<span id="loi-noidung" class="loi" ></span> </td>
					</tr>

					<tr>
					
						<td>Điện thoại<b class="red" >*</b></td>
						<td><input style="width: 300px" type="text" name="sdt" class="text" > <span
							id="loi-sdt" class="loi"></span></td>
					</tr>

					<tr>
						<td>Giá tiền<b class="red" >*</b></td>
						<td><input style="width: 300px" type="text" name="gia" class="text">VND <span
							id="loi-gia" class="loi"></span></td>
					</tr>
				</table>
				<input type="submit" value="Đăng tin" class="sub">
			</form>
		</div>
		<jsp:include page="footter.jsp"></jsp:include>
	</div>
</body>
</html>