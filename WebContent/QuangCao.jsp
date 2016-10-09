<%@page import="model.bean.QuangCao"%>
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
.image

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
	ArrayList<QuangCao> arrV = new ArrayList<QuangCao>();
	arrV = (ArrayList<QuangCao>) request.getAttribute("arrV");
%>
<body>
	<div id="main">
		<jsp:include page="header.jsp"></jsp:include>
		<div class="head-link" align="center">
				<ul>
					<li><a href="ShowTrangChu?">Trang chủ</a></li>
					<li><a href="DA_showtrangcanhan?">>Trang cá nhân</a></li>
					<li><a href="DA_showchucnangquantrivien?">>Chức năng quản trị viên</a></li>
					<li><a href="DA_showchucnangquantrivien?">>Quản Lý Thông Tin Khác</a></li>
				</ul>
		</div> 
		<div class="content" align="center">
		
			<h2>Quản Lý Quảng Cáo</h2>
			<td align="center">
			
				<table border="1px" cellspacing="0" class="tt">
					<tr>
						<th>STT</th>
						<th>Tên </th>
						<th>Ngày Đăng</th>
						<th>Hạn (tháng)</th>
						<th>Giá tiền</th>

					</tr>

					
					<%
						for (int i = 0; i < arrV.size(); i++) {
					%>
					<tr>
						<td align="center"><%=i + 1%></td>
						<td align="center"><%=arrV.get(i).getTen()%></td>
						<td align="center"><%=arrV.get(i).getNgay()%></td>
						<td align="center"><%=arrV.get(i).getHan()%></td>
						<td align="center"><%=arrV.get(i).getGia()%></td>
						<%String img= "images/"+arrV.get(i).getImage(); %>
						<td><img src = <%=img %> height="200px" width="200px"></td>
							<td align="center">
							<form action = "CheckXoaQuangCao" method="post" >
                        <input type = "submit" value = "Xóa">
                        <input type = "hidden" name = "Ma" value = <%=arrV.get(i).getTen()%>>
                        
                        </form></td>
                        
                        
                        </form></td>
					</tr>
					<%
						}
					%>
					<a href="themQuangCao.jsp"id="link">Thêm Quảng Cáo Mới</a>
				</table>

		</div>
		<jsp:include page="footter.jsp"></jsp:include>
	</div>
</body>
</html>