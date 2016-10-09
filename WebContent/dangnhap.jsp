<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Đăng Nhập</title>
</head>
<body>
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
h4 {
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
p{
color: red;
}

</style>
</head>

<body>
	<div id="main">
		<jsp:include page="header.jsp"></jsp:include>
		<div class="head-link">
				<ul>
					<li><a href="ShowTrangChu?">Trang chủ</a></li>
					<li><a href="dangnhap.jsp?">>Đăng nhập và đăng ký</a></li>
					
				</ul>
			</div>
		<div class="content" align="center">
			<%String thongbao=(String)request.getAttribute("Thongbao");%>
			
			<form action="CheckLoginServlet" method="post">
						<h4><%if(!(thongbao==null)){ System.out.println(thongbao); %>
					<%=thongbao%>
					<%} %>
									
					</h4>
					Username: <input name = "userName" type = "text" ><br><br>
					Password: <input name = "password" type = "password" ><br>
					<ul>
					<li><a href="quenmatkhau.jsp?">Quên mật khẩu</a></li>
				    </ul>
		              <input type = "submit" value = "Đăng Nhập" onclick="showForm()" >

			</form>
			<form action="dangky.jsp" method="post">
					<br>
					Đăng ký<br>
					You are not login<br>
					Would you like to register?<br><br>
					<input type = "submit" value = "Đăng Ký"  >

			</form>
	</div>
	
</body>
</html>