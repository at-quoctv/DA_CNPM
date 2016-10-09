<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Đổi mật khẩu</title>
<style type="text/css">
.tt tr td {
	padding-top: 10px;
	padding: 10px 10px;
	font-size: 16pt;
	width: 20 0px;
}

.sub {
	margin-top: 20px;
	margin-bottom: 20px;
	width: 100px;
	font-size: 14pt;
	background-color: green;
	color: white;
	float: left;
	height: 35px;
}

.tt{
	padding-right: 500px;
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
		<div class="head-link">
				<ul>
					<li><a href="ShowTrangChu?">Trang chủ</a></li>
					<li><a href="DA_trangcanhan.jsp?">>Trang cá nhân</a></li>
					<li><a href="doimatkhau.jsp?">>Đổi mật khẩu</a></li>
					
				</ul>
			</div>
		<div class="content" align="center">
<h1>Đổi mật khẩu</h1>
<form action="ceckpassword" method="post">
					Mật khẩu cũ:<br> <input name = "matkhaucu" type = "password" ><br><br>
					Mật khẩu mới: <br><input name = "matkhaumoi1" type = "password" ><br><br>
					Nhập lại mật khẩu:<br> <input name = "matkhaumoi2" type = "password" ><br><br>
		              <input type = "submit" value = "Thay đổi mật khẩu"  >
			</form>
			<br>
<form action="DA_trangcanhan.jsp" method="post">
<input type = "submit" value = "Quay lại"  >
</form>
			
</body>
</html>