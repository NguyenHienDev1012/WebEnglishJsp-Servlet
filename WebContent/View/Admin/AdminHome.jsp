<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
 <head>
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <base href=".">
      <meta charset="utf-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <title>Quản trị hệ thống</title>
      <link rel="shortcut icon" href="Template/Backend/Admin/uploads/images/favicon.png">
      <link href="Template/Backend/Admin/css/bootstrap.min.css" rel="stylesheet">
      <link href="Template/Backend/Admin/css/font-awesome.min.css" rel="stylesheet">
      <link href="Template/Backend/Admin/css/admin.css" rel="stylesheet">
      <link href="Template/Backend/Admin/css/introjs.min.css" rel="stylesheet">
      <script type="text/javascript" src="Template/Backend/Admin/js/jquery-1.10.2.min.js"></script>
      <script type="text/javascript" src="Template/Backend/Admin/js/bootstrap.min.js"></script>
      <script type="text/javascript" src="Template/Backend/Admin/js/intro.min.js"></script>
      <script type="text/javascript" src="Template/Backend/Admin/js/admin.js"></script>
      <!--Hỗ trợ IE nhận dạng thẻ HTML5-->
      <!--[if lt IE 9]>
          <script src="js/html5shiv.min.js"></script>
          <script src="js/respond.min.js"></script>
      <![endif]-->
</head>
   <body>
    <!--Header-->
    <jsp:include page="AdminHeader.jsp"></jsp:include>
    <!-- End Header -->
     		 <jsp:include page="AdminMenuLeft.jsp"></jsp:include>
         <div id="main"><!--Phần chứa nội dung chính-->
            <ol class="breadcrumb">
               <li><a href="AdminForward"><i class="fa fa-home"></i> Trang quản trị</a></li>
            </ol>
            <div class="col-xs-12">
               <div class="menu">
                  <a href="AdminForward" class="col-md-2 col-sm-5 col-xs-5">
                  <i class="fa fa-home"></i><br> <span>Trang quản trị</span>
                  </a>
                  <a href="ListGrammarManageForward" class="col-md-2 col-sm-5 col-xs-5">
                  <i class="fa fa-edit"></i><br> <span>Ngữ pháp</span>
                  </a>
                  <a href="product.html" class="col-md-2 col-sm-5 col-xs-5">
                  <i class="fa fa-fire"></i><br> <span>Từ Vựng</span>
                  </a>
                  <a href="type_product.html" class="col-md-2 col-sm-5 col-xs-5">
                  <i class="fa fa-bars"></i><br> <span>Loại sản phẩm</span>
                  </a>
                  <a href="contact.html" class="col-md-2 col-sm-5 col-xs-5">
                  <i class="fa fa-envelope-o"></i><br> <span>Phản hồi</span>
                  </a>
                  <a href="slider.html" class="col-md-2 col-sm-5 col-xs-5">
                     <i class="fa fa-picture-o"></i><br> <span>Slider</span>
                     </a>
                  <a href="MemberAccountManageForward" class="col-md-2 col-sm-5 col-xs-5">
                  <i class="fa fa-user"></i><br> <span>Tài khoản</span>
                  </a>
                  <a href="setting.html" class="col-md-2 col-sm-5 col-xs-5">
                  <i class="fa fa-wrench"></i><br> <span>Cấu hình</span>
                  </a>
               </div>
            </div>
         </div>
         <!--END #main-->
      </div>
   </body>
</html>
