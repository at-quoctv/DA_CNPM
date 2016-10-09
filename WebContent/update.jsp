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
</style>
</head>
<body>
	<div id="main">
		<jsp:include page="header.jsp"></jsp:include>
		<div class="content" align="center">
			
			<form action="CheckUpdateDH" method="post" name="capnhat"
				onsubmit="return KiemTra();">
				<h2>Cập nhật đơn hàng</h2>
				<div>
					<table>
						<tr>
							<td>Mã khách hàng</td>
							<td><input type="text" value="" name=idKH;
								readonly="readonly" class="text"></td>
						</tr>
						<tr>
							<td>Tên khách hàng</td>
							<td><input type="text" value="" readonly="readonly"
								class="text"></td>
						</tr>
						<tr>
							<td>Địa chỉ nhận quà</td>
							<td><input type="text" value="" class="text"
								name="diachi"><span id="loi-diachi" class="loi"></span></td>
						</tr>
						<tr>
							<td>Ngày nhận quà</td>

							<td><select name="ngay" class="text" onchange="myFunction()"
								id="ng">
									<option value=""></option>
									<option value="">Ngày</option>
									<option value="<">Ngày</option>
							</select></td>
						</tr>
						<tr>
							<td>Thời gian nhận quà</td>
							<td><select name="thoigian" class="text" id="tg"
								onchange="myFunction()">
									<option value="sang">Sáng</option>
									<option value="trua">Trưa</option>
									<option value="toi">Tối</option>
							</select></td>
						</tr>
						<tr>
							<td>Số tiền phụ thu</td>
							<td><input type="text" value="" id="tpt"
								onchange="myFunction()" name="tienphuthu" class="text"><span
								id="loi-tienphuthu" class="loi"></span></td>
						</tr>
						<tr>
							<td>Số lượng quà</td>
							<td><input type="text" value="" id="sl"
								onchange="myFunction()" class="text" name="soluong"><span
								id="loi-soluong" class="loi"></span></td>
						</tr>
						<tr>
							<td>Mức phí</td>
							<td><input type="text" value="" class="text" name="mucphi"
								readonly="readonly" id="mp"></td>
						</tr>
						<tr>
							<td>Trạng thái</td>

							<td>Đã giao hàng <input type="radio" name="trangthai"
								value="dagiaohang" class="text" checked="checked"> Chưa
								giao hàng <input type="radio" name="trangthai"
								value="chuagiaohang"></td>
						</tr>
					</table>
					<input type="submit" value="Cập nhật" class="sub">
				</div>
			</form>
		</div>
		<jsp:include page="footter.jsp"></jsp:include>
	</div>
</body>
</html>