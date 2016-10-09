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


	ArrayList<Tindang> arrTD = new ArrayList<Tindang>();
	arrTD = (ArrayList<Tindang>) request.getAttribute("arrTD");
	String duyettin = (String)request.getAttribute("duyettin");
	
%>
<body>
	<div id="main">
		<jsp:include page="header.jsp"></jsp:include>
		<div class="head-link" align="center">
				<ul>
					<li><a href="ShowTrangChu?">Trang chủ</a></li>
					<li><a href="DA_showtrangcanhan?">>Trang cá nhân</a></li>
					<li><a href="DA_showchucnangquantrivien?">>Chức năng quản trị viên</a></li>
					<li><a href="DA_showquanlytinchuadang?">>Quản lý tin chưa đăng</a></li>
					
				</ul>
		</div> 
		
		<div class="content" align="center">
			<h2>Quản lí tin đăng</h2>
			<form action="" method="post">
				
				<table width="80%"  border="1px" cellspacing="0" class="tt">
				
					<tr >
						<th>Tên tiêu đề</th>
						<th>Tên người đăng</th>
						<td align="center" colspan="3">Chọn chức năng Duyệt - Xoá - Sửa</td>

					</tr>

						
					<%
						for (int i = 0; i < arrTD.size(); i++) {
					%>
					<tr>
						<td align="center"><%=arrTD.get(i).getTieuderao()%></td>
						<td align="center"><%=arrTD.get(i).getTenthanhvien()%></td>
						
						
						<td align="center"><a
							href="DA_duyettin?id=<%=arrTD.get(i).getMa()%>"
							id="link">Duyệt</a></td>
							
						<td align="center"><a
							href="DA_suatin?id=<%=arrTD.get(i).getMa()%>"
							id="link">Sửa</a></td>
							
						<td align="center"><a
							href="DA_xoatin?id=<%=arrTD.get(i).getMa()%>"
							id="link">Xoá</a></td>

					</tr>
					<%
						}
					%>
					
				
				</table>
			<% if(null != duyettin) {%> <h4 class="loi"> duyet tin that bai <%} %> </h4>
			</form>
		</div>
		<jsp:include page="footter.jsp"></jsp:include>
	</div>
</body>
</html>