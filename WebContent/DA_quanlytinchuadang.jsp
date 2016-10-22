<%@page import="model.bean.Tindang"%>
<%@page import="model.bean.Vacxin"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Tin chưa đăng</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
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
	<div class="container">
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
				
				<table class="table">
				
								<thead>
      <tr>
     
        <th>User</th>
        <th>Chuyên Mục</th>
        <th>Vùng</th>
        <th>Số điện thoại</th>
        <th>Nhu cầu</th>
        <th>Tiêu đề</th>
        <th>Nội dung</th>
        <th>Giá</th>
        <th>Chức năng</th>
      </tr>
    </thead>

						
					<%
						for (int i = 0; i < arrTD.size(); i++) {
					%>
					 <tr class="success">
					
						
						<th align="center"><%=arrTD.get(i).getTenthanhvien()%></th>
						<th align="center"><%=arrTD.get(i).getChuyenmuc()%></th>
						
						<th align="center"><%=arrTD.get(i).getVung()%></th>
						<th align="center"><%=arrTD.get(i).getDienthoai()%></th>
						
						<th align="center"><%=arrTD.get(i).getBandangtin()%></th>
						<th align="center"><%=arrTD.get(i).getTieuderao()%></th>
						
						<th align="center"><%=arrTD.get(i).getNoidung()%></th>
					<th align="center"><%=arrTD.get(i).getGiatien()%></th>
                     <th ><a href="DA_duyettin?ID=<%=arrTD.get(i).getMa()%>&key=0" role="button" class="btn btn-success"> Duyệt </a>
                     <a href="DA_duyettin?ID=<%=arrTD.get(i).getMa()%>&key=0" role="button" class="btn btn-info"> Sửa </a>
                      <a href="DA_xoatin?ID=<%=arrTD.get(i).getMa()%>&key=0" role="button" class="btn btn-danger">Xóa</a></th>

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