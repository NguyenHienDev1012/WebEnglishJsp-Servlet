<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="vi">
   <head>
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <base href=".">
      <meta charset="utf-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <title>Quản trị hệ thống</title>
      <link rel="shortcut icon" href="favicon.png">
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
      <jsp:include page="AdminHeader.jsp"></jsp:include>
         <!-- /.navbar-collapse -->
      <jsp:include page="AdminMenuLeft.jsp"></jsp:include>
         <div id="main">
            <ol class="breadcrumb">
         <li><a href="AdminForward"><i class="fa fa-home"></i> Trang quản trị</a></li>
         <li class="active"><a href="MemberAccountManageForward">Tài khoản</a></li>
      </ol>
      <div class="col-xs-12">
         <form id="admin-form" method="post" action="" role="form">
            <div class="col-xs-12">
               <div class="form-group">
                  <!-- Single button -->
                  <div class="btn-group">
                     <select id="task" name="task" class="form-control">
                        <option>Tác vụ</option>
                        <option value="delete">Xóa tài khoản</option>
                        <option value="deactive">Khóa</option>
                        <option value="active">Mở khóa</option>
                     </select>
                  </div>
                  <a href="NewMemberAccountForward" class="btn btn-submit"><small><i class="fa fa-plus"></i></small> Thêm mới</a>
                  <div class="btn-group pull-right hidden-xs" id="div-search">
                     <input id="search" name="search" type="text" value="" class="form-control" placeholder="Tìm kiếm">
                     <span class="fa fa-search"></span>
                  </div>
               </div>
               <table class="table table-bordered table-hover">
                  <thead>
                     <tr>
                        <th><input id="check_all" type="checkbox"></th>
                        <th class="hidden-xs">ID</th>
                        <th>Tài khoản</th>
                        <th class="hidden-xs">Email</th>
                        <th class="hidden-sm hidden-xs">Mật khẩu</th>
                        <th>Loại thành viên</th>
                         <th>Sửa</th>
                     </tr>
                  </thead>
                  <tbody>
                  <c:forEach items="${listAccountMember }" var="list">
                     <tr>
                         <td>
                           <input name="id[]" type="checkbox" value="0">
                        </td>
                        <td class="hidden-xs">${list.memberid}</td>
                        <td>
                           <a href="new-type_product.html">${list.username }</a>
                        </td>
                        <td class="hidden-xs">${list.email }</td>
                        <td class="hidden-sm hidden-xs">${list.password}</td>
                        <td class="hidden-sm hidden-xs">${list.categorymemberid}</td>
                         <td>
                        <a href="new-type_product.html"><i class="fa fa-edit" data-toggle="tooltip" data-placement="top" title="Sửa tài khoản"></i></a>
                        </td>
                        
                     </tr>
                     </c:forEach>
                  </tbody>
               </table>
               <div class="text-right">
                  <ul class="pagination" id="step5">
                     <li class="disabled"><span>«</span></li>
                     <li class="active"><span>1</span></li>
                     <li><a href="#">2</a></li>
                     <li><a href="#">3</a></li>
                     <li><a href="#">»</a></li>
                  </ul>
                </div>
               <p><strong><i class="fa fa-bookmark"></i>Ghi chú: </strong></p>
               <p class="class="note-items"><i class="fa fa-times text-danger"></i>Loại 1:Thành viên thường</p>
               <p class="note-items"><i class="fa fa-check text-success"></i> Loại 2:Quản trị viên</p>
            </div>
         </form>
      </div>  
         </div>
         <!--END #main-->
         <h2 style="color: blue" align="center"> <%=request.getAttribute("messagelistAccount")!=null?request.getAttribute("messagelistAccount"):" "%></h2>
         
      </div>
   </body>
</html>
