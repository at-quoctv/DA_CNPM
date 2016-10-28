<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Trang chủ</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="css/bootstrap.min.css">
  <script src="js/jquery.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <style>
    /* Remove the navbar's default margin-bottom and rounded borders */
    .navbar {
      margin-bottom: 0;
      border-radius: 0;
    }
    
    /* Set height of the grid so .sidenav can be 100% (adjust as needed) */
    .row.content {height:300px;
     background-color: #f1f1a1;
    }
    .row{
    height:450px;
    }
    /* Set gray background color and 100% height */
    .sidenav {
      padding-top: 20px;
      background-color: #f1f1f1;
      height: 100%;
    }
    
    /* Set black background color, white text and some padding */
    footer {
      background-color: #555;
      color: white;
      padding: 15px;
    }
    
    /* On small screens, set height to 'auto' for sidenav and grid */
    @media screen and (max-width: 767px) {
      .sidenav {
        height: auto;
        padding: 15px;
      }
      .row.content {height:auto;}
    }
    .navbar-inverse{
    width: 100%; 
    height: 80px;
    }
  </style>
</head>
<body>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="#">
         <img src="images/logo.png" class="img-rounded" alt="Cinque Terre" width="200" height="60">
      </a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
       <li><a href="#"><span class="glyphicon glyphicon-search"></span> Tìm rao vặt</a></li>
        <li><a href="#">Đăng tin miễn phí</a></li>
       
      </ul>
     <ul class="nav navbar-nav navbar-right">
        <li><a href="#"><span class="glyphicon glyphicon-log-out"></span> Đăng ký</a></li>
        <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Đăng nhập</a></li>
      </ul>
    </div>
  </div>
</nav>
  
<div class="container-fluid text-center">
  <div class="row content">
    <div class="col-sm-2 sidenav">
      <p><a href="#">Trang cá nhân</a></p>
   
    </div>
    <div class="col-sm-8 text-left">
     <img src="images/dangtin.jpg" class="img-rounded" alt="Cinque Terre" width="100%" height="200px">
      <hr>
      <div class="onimages">
  <div class="col-sm-2">
  </div>
  <div class="col-sm-1">
  </div>
   <div class="col-sm-2">
 
    <input class="form-control" placeholder="Tìm kiếm" id="inputdefault" type="text">
   </div>
   <div class="col-sm-2">
   <div class="form-group">
         <select class="form-control" id="exampleSelect2">
         <option value="0">Tất cả danh mục </option>
                
                        <option style="background-color:#dcdcc3; font-weight: bold;" value="2000">-- Xe cộ --</option>
                        
                    
                
                        <option value="2020">Xe máy</option>
                        
                    
                
                        <option value="2010">Ô tô</option>
                        
                    
                
                        <option value="2060">Xe đạp</option>
                        
                    
                
                        <option value="2050">Xe tải, Xe khác</option>
                        
                    
                
                        <option value="2030">Phụ tùng xe</option>
                        
                    
                
                    
                    
                        
                            
                                <option style="background-color:#dcdcc3; font-weight: bold;" value="1000_w">-- Bất động sản - Mua bán --</option>
                                
                            
                        
                            
                                <option value="1010_w">Căn hộ/Chung cư</option>
                            
                        
                            
                                <option value="1020_w">Nhà ở</option>
                            
                        
                            
                                <option value="1040_w">Đất</option>
                            
                        
                            
                                <option value="1030_w">Văn phòng, Mặt bằng kinh doanh</option>
                            
                        
                            
                        
                    
                        
                            
                                <option style="background-color:#dcdcc3; font-weight: bold;" value="1000_y">-- Bất động sản - Thuê --</option>
                                
                            
                        
                            
                                <option value="1010_y">Căn hộ/Chung cư</option>
                            
                        
                            
                                <option value="1020_y">Nhà ở</option>
                            
                        
                            
                                <option value="1040_y">Đất</option>
                            
                        
                            
                                <option value="1030_y">Văn phòng, Mặt bằng kinh doanh</option>
                            
                        
                            
                                <option value="1050_y">Phòng trọ</option>
                            
                        
                    
                
                    
                    
                
                    
                    
                
                    
                    
                
                    
                    
                
                    
                    
                
                        <option style="background-color:#dcdcc3; font-weight: bold;" value="5000">-- Đồ điện tử --</option>
                        
                    
                
                        <option value="5010">Điện thoại di động</option>
                        
                    
                
                        <option value="5040">Máy tính bảng</option>
                        
                    
                
                        <option value="5030">Máy tính, Laptop</option>
                        
                    
                
                        <option value="5050">Máy ảnh, Máy quay</option>
                        
                    
                
                        <option value="5020">Tivi, Loa, Amply, Máy nghe nhạc</option>
                        
                    
                
                        <option value="5060">Phụ kiện, Linh kiện</option>
                        
                    
                
                        <option style="background-color:#dcdcc3; font-weight: bold;" value="3000">-- Thời trang, Đồ dùng cá nhân --</option>
                        
                    
                
                        <option value="3030">Quần áo</option>
                        
                    
                
                        <option value="3040">Giày dép, Túi xách, Phụ kiện</option>
                        
                    
                
                        <option value="3010">Mẹ và bé</option>
                        
                    
                
                        <option style="background-color:#dcdcc3; font-weight: bold;" value="9000">-- Nội ngoại thất, Đồ gia dụng --</option>
                        
                    
                
                        <option value="9030">Tủ lạnh, Máy lạnh, Máy giặt</option>
                        
                    
                
                        <option value="9040">Nội ngoại thất, Cây cảnh</option>
                        
                    
                
                        <option value="9050">Đồ gia dụng gia đình khác</option>
                        
                    
                
                        <option style="background-color:#dcdcc3; font-weight: bold;" value="4000">-- Giải trí, Thể thao, Sở thích --</option>
                        
                    
                
                        <option value="4030">Vật nuôi, Thú cưng</option>
                        
                    
                
                        <option value="4040">Âm nhạc, Phim, Sách</option>
                        
                    
                
                        <option value="4020">Đồ thể thao, Dã ngoại</option>
                        
                    
                
                        <option value="4010">Sưu tầm, Game, Sở thích khác</option>
                        
                    
                
                        <option style="background-color:#dcdcc3; font-weight: bold;" value="8000">-- Đồ dùng văn phòng, công nông nghiệp --</option>
                        
                    
                
                        <option value="8010">Đồ dùng văn phòng</option>
                        
                    
                
                        <option value="8030">Đồ chuyên dụng, Giống nuôi trồng</option>
                        
                    
                
                        <option style="background-color:#dcdcc3; font-weight: bold;" value="6000">-- Việc làm, Dịch vụ --</option>
                        
                    
                
                        
                            
                            
                                <option value="6010_s">Việc tìm người</option>
                            
                                <option value="6010_k">Người tìm việc</option>
                            
                        
                    
                
                        <option value="6020">Dịch vụ</option>
                        
                    
                
                        <option value="6030">Du lịch</option>
                        
                    
                
                        <option style="background-color:#dcdcc3; font-weight: bold;" value="7000">-- Các loại khác --</option>
                        
                    
                
                        <option value="7010">Các loại khác</option>
        </select>
       </div>
   </div>
   <div class="col-sm-2">
    <div class="form-group">
         <select name="city" id="city" class="form-control">
                                            <option value="">Tỉnh/Thành phố</option>
                                            <option value="1">TP Hà Nội</option>
                                            <option value="2">TP Hồ Chí Minh</option>
                                            <option value="3">An Giang</option>
                                            <option value="4">Bà Rịa - Vũng Tàu</option>
                                            <option value="5">Bắc Cạn</option>
                                            <option value="6">Bắc Giang</option>
                                            <option value="7">Bạc Liêu</option>
                                            <option value="8">Bắc Ninh</option>
                                            <option value="9">Bến Tre</option>
                                            <option value="10">Bình Định</option>
                                            <option value="11">Bình Dương</option>
                                            <option value="12">Bình Phước</option>
                                            <option value="13">Bình Thuận</option>
                                            <option value="14">Cà Mau</option>
                                            <option value="15">TP Cần Thơ</option>
                                            <option value="16">Cao Bằng</option>
                                            <option value="17">TP Đà Nẵng</option>
                                            <option value="65">Đắc Nông</option>
                                            <option value="18">Đăk Lăk</option>
                                            <option value="19">Điện Biên</option>
                                            <option value="20">Đồng Nai</option>
                                            <option value="21">Đồng Tháp</option>
                                            <option value="22">Gia Lai</option>
                                            <option value="24">Hà Giang</option>
                                            <option value="26">Hà Nam</option>
                                            <option value="28">Hà Tĩnh</option>
                                            <option value="29">Hải Dương</option>
                                            <option value="30">TP Hải Phòng</option>
                                            <option value="66">Hậu Giang</option>
                                            <option value="31">Hòa Bình</option>
                                            <option value="32">Hưng Yên</option>
                                            <option value="33">Khánh Hòa</option>
                                            <option value="34">Kiên Giang</option>
                                            <option value="35">KonTum</option>
                                            <option value="36">Lai Châu</option>
                                            <option value="37">Lâm Đồng</option>
                                            <option value="38">Lạng Sơn</option>
                                            <option value="39">Lào Cai</option>
                                            <option value="40">Long An</option>
                                            <option value="67">Lưu học sinh đang ở nước ngoài</option>
                                            <option value="41">Nam Định</option>
                                            <option value="42">Nghệ An</option>
                                            <option value="43">Ninh Bình</option>
                                            <option value="44">Ninh Thuận</option>
                                            <option value="45">Phú Thọ</option>
                                            <option value="46">Phú Yên</option>
                                            <option value="47">Quảng Bình</option>
                                            <option value="48">Quảng Nam</option>
                                            <option value="49">Quảng Ngãi</option>
                                            <option value="50">Quảng Ninh</option>
                                            <option value="51">Quảng Trị</option>
                                            <option value="52">Sóc Trăng</option>
                                            <option value="53">Sơn La</option>
                                            <option value="54">Tây Ninh</option>
                                            <option value="55">Thái Bình</option>
                                            <option value="56">Thái Nguyên</option>
                                            <option value="57">Thanh Hóa</option>
                                            <option value="58">Thừa Thiên Huế</option>
                                            <option value="59">Tiền Giang</option>
                                            <option value="60">Trà Vinh</option>
                                            <option value="61">Tuyên Quang</option>
                                            <option value="62">Vĩnh Long</option>
                                            <option value="63">Vĩnh Phúc</option>
                                            <option value="64">Yên Bái</option>
                                        </select>
       </div>
   
   </div>
     
   <div class="col-sm-1">
  
     <a href="#" role="button" class="btn btn-primary active navb-right"><span class="glyphicon glyphicon-search"></span></a>
   </div>
  
    </div>
     
    </div>
    <div class="col-sm-2 sidenav">
      <div class="well">
         <img src="images/logo.png" class="img-rounded" alt="Cinque Terre" width="100" height="60">
      </div>
      <div class="well">
        <img src="images/logo.png" class="img-rounded" alt="Cinque Terre" width="100" height="60">
      </div>
      
    </div>
    
   
  </div>
 
  
</div>
<div class="container-fluid">
    <div class="row">
    <div class="col-sm-2 sidenav">
    </div>
    <div class="col-sm-8 text-left">
            <div class="col-sm-12">
     <h3>Rao Bán Mới <span class = "Success Label"></span></h3>
     <hr>
      <div id="home" class="tab-pane fade in active">
  <div class="pre-scrollable">
 <% for(int i=0;i<20;i++){ %>
     <div class="col-sm-12">
   <div class="col-xs-5">
      <img src="images/htc.jpg" class="img-rounded" alt="Cinque Terre" width="100" height="100">
    </div>
    <div class="col-xs-5" >
    <a href="http://www.w3schools.com">M7 HTC quốc tế,ram 2g  giá <%=1400*(i+1) %>usd</a>
   
    </div>
      <div class="col-xs-2" >
        <p>Urgent! </p>
    </div>
     <hr>
     </div>
    
    <% } %>
     </div>
    </div>
    </div>
    </div>
    <div class="col-sm-2 sidenav">
    </div>
    </div>
</div>

<footer class="container-fluid text-center">
  <p>Footer Text</p>
</footer>

</body>
</html>

