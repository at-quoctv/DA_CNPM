<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Đăng ký</title>
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
</style>
</head>
<body>
			<%String thongbao=(String)request.getAttribute("Thongbao");%>
<div id="main">
		<jsp:include page="header.jsp"></jsp:include>
		<div class="head-link">
				<ul>
					<li><a href="ShowTrangChu?">Trang chủ</a></li>
					<li><a href="dangnhap.jsp?">>Đăng nhập và đăng ký</a></li>
					<li><a href="dangky.jsp?">>Đăng ký</a></li>
					
				</ul>
			</div>
		<div class="content" align="center">
<h1>Đăng Ký</h1>
<form action="CheckDangKy" method="post">
						<h4><%if(!(thongbao==null)){ System.out.println(thongbao); %>
					<%=thongbao%>
					<%} %>
									
					</h4>
					Biệt danh:<br> <input name = "bietdanh" type = "text" ><br><br>
					Email: <br><input name = "userName" type = "text" ><br><br>
					Mật khẩu:<br> <input name = "password1" type = "password" ><br><br>
					Nhập lại mật khẩu:<br> <input name = "password2" type = "password" ><br><br>
					<textarea disabled rows="8" cols="50">
At w3schools.com you will learn how to make a website.
We offer free tutorials in all web development technologies.
At w3schools.com you will learn how to make a website.
We offer free tutorials in all web development technologies.
At w3schools.com you will learn how to make a website.
We offer free tutorials in all web development technologies.
At w3schools.com you will learn how to make a website.
We offer free tutorials in all web development technologies.
At w3schools.com you will learn how to make a website.
We offer free tutorials in all web development technologies.
At w3schools.com you will learn how to make a website.
We offer free tutorials in all web development technologies.
					</textarea>
					<br>
					<input onclick=" if(this.checked){myFunction()}"type="checkbox" id="myCheck">
				
					Tôi đồng ý với các điều khoản <br><br>
		              <input type = "submit" value = "Đăng Ký"  id ="bt" disabled="true">

			</form>
			<script>
function myFunction() {
    var x = document.getElementById("myCheck");
    if(x.checked = true)
    	{
    	document.getElementById("bt").disabled = false;
    	}
}
</script>
</body>
</html>