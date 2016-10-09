<%@page import="model.bean.Tindang"%>
<%@page import="model.bean.Vacxin"%>
<%@page import="java.util.ArrayList"%>
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
<%


	ArrayList<Tindang> arrTDD = new ArrayList<Tindang>();
	arrTDD = (ArrayList<Tindang>) request.getAttribute("arrTDD");
	
	
%>
<body>
	<div id="main">
		<jsp:include page="header.jsp"></jsp:include>
		<div class="head-link" align="center">
				<ul>
					<li><a href="ShowTrangChu?">Trang chủ</a></li>
					<li><a href="DA_showtrangcanhan?">>Trang cá nhân</a></li>
					<li><a href="DA_showquanlytindadang?">>Quản lý tin đã đăng</a></li>
					
				</ul>
		</div> 
		
		<div class="content" align="center">
			<h2>Quản lí tin đã đăng</h2>
			<form action="" method="post">
				
				<table width="80%"  border="1px" cellspacing="0" class="tt">
				

						
					<%
						for (int i = 0; i < arrTDD.size(); i++) {
					%>
					<tr>
						<td align="center"><%=arrTDD.get(i).getTieuderao()%></td>
						
							
						<td align="center"><a
							href="DA_suatin?id=<%=arrTDD.get(i).getMa()%>"
							id="link">Sửa</a></td>
							
						<td align="center"><a
							href="DA_xoatindadang?id=<%=arrTDD.get(i).getMa()%>"
							id="link">Xoá</a></td>

					</tr>
					<%
						}
					%>
					
				
				</table>
			
			</form>
		</div>
		<jsp:include page="footter.jsp"></jsp:include>
	</div>
</body>
</html>