<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login</title>
<style>
body{

background-repeat: no-repeat;
background-image: url("img/ruyban.jpg");
}
h1{

color: red;
text-align: bottom;
}
form{
padding: 20px; 
margin-left: 450px;
margin-right: 450px;
border-style: groove;
border-width: 10px;
border-color: red;
background-color: pink;

}
a{
position: top;
border-color: green;
text-decoration: none;
}
</style>
</head>
<body>
<center>
<p>
<a href="ThemQuangCao" onclick = "whatever">Đăng nhập</a>
</p>
<jsp:include page="header.jsp"></jsp:include>
<h1>Thêm Quảng Cáo Mới</h1>
<form action="CheckThemQuangCao" method="post">
				
		Tên Quảng Cáo:<br> <input name = "ten" type = "text" ><br><br>
		Ngày Đăng:<br> <input name = "ngay" type = "text" ><br><br>
		Hạn:<br> <input name = "han" type = "text" ><br><br>
		giá:<br> <input name = "gia" type = "text" ><br><br>
		image:<br> <input name = "image" type = "text" ><br><br>
		              <input type = "submit" value = "Thêm"  >
		             
</form>
<jsp:include page="footter.jsp"></jsp:include>
</center>
</body>
</html>