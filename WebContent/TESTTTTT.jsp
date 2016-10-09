<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="test thoi" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<script type="text/javascript">
	function KiemTra() {

		var frm = document.forms["dangtin"];

		//---------

		var tieude = frm["bidanh"].value;
		if (tieude == "") {
			document.getElementById("loi-bidanh").innerHTML = "Điền bí danh";
			return false;
		} else {
			if(tieude.length > 20){
				document.getElementById("loi-bidanh").innerHTML = "Yêu cầu nhập dưới 20 kí tự";
				return false;
			}
			if(tieude.length <6 ){
				document.getElementById("loi-bidanh").innerHTML = "Yêu cầu nhập trên 6 kí tự";
				return false;
			}		
			document.getElementById("loi-bidanh").innerHTML = "";
		}
		

		//---------


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
			if((sdt.length <9) || (sdt.length >10 )){
				document.getElementById("loi-bidanh").innerHTML = "Số điện thoại từ 9 đến 10 số";
				return false;
			}	
			document.getElementById("loi-sdt").innerHTML = "";
		}
		//-----------
		
		
		var gia = frm["diachi"].value;
		if (gia == "") {
			document.getElementById("loi-diachi").innerHTML = "Điền địa chỉ";
			return false;
		} else {
			
			document.getElementById("loi-diachi").innerHTML = "";
		}
		
		
		
		return true;
	}
	</script>
<body>
	<div id="main">
		<jsp:include page="header.jsp"></jsp:include>
		<div class="head-link" align="center">
				<ul>
					<li><a href="ShowTrangChu?">Trang chủ</a></li>
					<li><a href="DA_showtrangcanhan?">>Trang cá nhân</a></li>
					<li><a href="TESTTTTT.jsp?">>Thông tin cá nhân</a></li>
				</ul>
		</div> 
		<div class="content" align="center">
			
			<form action="DA_checkthongtincanhan" method="get" name="dangtin"
			<%	String test = (String)session.getAttribute("userName");
				System.out.print(test);
				
			%>
			
				onsubmit="return KiemTra();">
				<table class="tt">
																  
				<tr>
						<td>Bí danh<b class="red" >*</b> </td>
						<td><input style="width: 300px" type="text" name="bidanh" class="text"> <span
							id="loi-bidanh" class="loi"></span></td>
					</tr>


					<tr>
						<td>Điện thoại<b class="red" >*</b></td>
						<td><input style="width: 300px" type="text" name="sdt" class="text"> <span
							id="loi-sdt" class="loi"></span></td>
					</tr>

					<tr>
						<td>Địa chỉ<b class="red" >*</b></td>
						<td><input style="width: 300px" type="text" name="diachi" class="text"><span
							id="loi-diachi" class="loi"></span></td>
					</tr>
					<tr>
				    		<td> Bạn là <b class="red" >*</b>  </td>
						    <td>
								<input name="banla" type="radio" value="Ca nhan" checked="checked" />Cá nhân
								<input name="banla" type="radio" value="Cong ty" />Công ty								
						    </td>
					</tr>
				</table>
				<input type="submit" value="Cập nhật" class="sub">
			</form>
			<br>
			<div class="head-link" align="center">
				<form action="DA_showtrangcanhan" method="post">
					<input type="submit" value="Quay lại" >
				</form>
			</div>
		</div>
		<jsp:include page="footter.jsp"></jsp:include>
	</div>
</body>
</html>