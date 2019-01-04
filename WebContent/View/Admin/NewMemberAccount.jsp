<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vi">
   <head>
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <base href=".">
      <meta charset="utf-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <title>Quản trị hệ thống</title>
      <link href="Template/Backend/Admin/css/bootstrap.min.css" rel="stylesheet">
      <link href="Template/Backend/Admin/css/font-awesome.min.css" rel="stylesheet">
      <link href="Template/Backend/Admin/css/admin.css" rel="stylesheet">
      <link href="Template/Backend/Admin/css/introjs.min.css" rel="stylesheet">
      <script type="text/javascript" src="Template/Backend/Admin/js/jquery-1.10.2.min.js"></script>
      <script type="text/javascript" src="Template/Backend/Admin/js/bootstrap.min.js"></script>
      <script type="text/javascript" src="Template/Backend/Admin/js/intro.min.js"></script>
      <script type="text/javascript" src="Template/Backend/Admin/js/admin.js"></script>
     
   </head>
   <body>
    	 <!-- Header -->
     <jsp:include page="AdminHeader.jsp"></jsp:include>
         <!--End Header -->
         <!-- MenuLeft -->
	<jsp:include page="AdminMenuLeft.jsp"></jsp:include>
		 <!-- End MenuLeft -->
         <div id="main">
            <ol class="breadcrumb">
            <li><a href="AdminForward"><i class="fa fa-home"></i> Trang quản trị</a></li>
             <li class="active"><a href="MemberAccountManageForward">Tài khoản</a></li>
               <li class="active"><a href="NewMemberAccountForward">Thêm tài khoản mới</a></li>
            </ol>
            <div class="col-xs-12">
         <form id="admin-form" class="form-horizontal col-xl-8 col-lg-9 col-md-10" method="post" action="NewMemberAccountController" role="form">
             <input name="id" type="hidden" value="0">
             <div class="form-group">
                 <label for="username" class="col-sm-3 control-label required">Tên đăng nhập</label>
                 <div class="col-sm-9">
                     <input name="username" type="text" value="" class="form-control" id="username" placeholder="Tên đăng nhập" required="" maxlength="255">
                 </div>
             </div>
             <div class="form-group">
                 <label for="email" class="col-sm-3 control-label required">Email</label>
                 <div class="col-sm-9">
                     <input name="email" type="email" value="" class="form-control" id="email" placeholder="Email" required="">
                 </div>
             </div>
             <div class="form-group">
                 <label for="pass" class="col-sm-3 control-label required">Mật khẩu</label>
                 <div class="col-sm-9">
                     <input name="pass" type="password" value="" class="form-control" id="pass" placeholder="Mật khẩu" required="">
                 </div>
             </div>
             <div class="form-group">
                 <label for="repass" class="col-sm-3 control-label required">Loại thành viên</label>
                 <div class="col-sm-9">
                     <input name="categorymemberid" type="text" value="" class="form-control" id="repass" placeholder="Loại thành viên" required="">
                 </div>
             </div>
             <div class="form-group">
                 <div class="col-sm-offset-3 col-sm-9">
                     <button type="submit" class="btn btn-submit"><small><i class="fa fa-plus"></i></small> Thêm mới</button>
                        <a class="btn btn-warning" href="MemberAccountManageForward"><small><i class="fa fa-reply"></i></small> Trở về</a>
                 </div>
             </div>
         </form>
         </div>
         </div>
         <!--END #main-->
               <h2 style="color: blue" align="center"> <%=request.getAttribute("messageAdminInsertAccount")!=null?request.getAttribute("messageAdminInsertAccount"):" "%></h2>
         
      </div>
   </body>
</html>
