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
		<div class="head-link" align="center">
				<ul>
					<li><a href="ShowTrangChu?">Trang chủ</a></li>
					<li><a href="DA_showtrangcanhan?">>Trang cá nhân</a></li>
					<li><a href="DA_showchucnangquantrivien?">>Chức năng quản trị viên</a></li>
					
				</ul>
		</div> 
		<div class="content" align="center">
			
			
			<form  action="DA_checkchucnangquantrivien" method="post" name="dangky">
				<table class="tt">
					<tr>
					<h1 class="tt">Chức năng quản trị viên</h1>
					</tr>
					<tr>
						<td><input style="width: 300px;" type="submit" name="quanlytindang" value="Quản lý tin chưa đăng"></td>

					</tr>
					<tr>
						<td><input style="width: 300px;" type="submit" name="quanlythanhvien" value="Quản lý thành viên"></td>

					</tr>
					
					<tr>
						<td><input style="width: 300px;"  type="submit" name="quanlythongtinkhac" value="Quản lý thông tin  khác"></td>

					</tr>
					<tr>
						<td><input style="width: 300px;"  type="submit" name="thongke" value="Thống kê"></td>

					</tr>		
				<tr>
				<td><input class="sub" type="submit" name="quaylai" value="Quay lại" > </td></tr>
				</table>
			</form>
		</div>
		<jsp:include page="footter.jsp"></jsp:include>
	</div>
</body>
</html>