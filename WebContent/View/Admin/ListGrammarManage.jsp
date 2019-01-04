<%@page import="BEAN.Grammar"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

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
      <jsp:include page="AdminMenuLeft.jsp"></jsp:include>
         <div id="main">
            <ol class="breadcrumb">
         <li><a href="AdminForward"><i class="fa fa-home"></i> Trang quản trị</a></li>
         <li class="active"><a href="ListGrammarManageForward">Quản lý bài ngữ pháp</a></li>
      </ol>
      <div class="col-xs-12">
         <form id="post_form" method="post" action="" role="form">
            <div class="col-xs-12">
               <div class="form-group">
                  <!-- Single button -->
                  <div class="btn-group">
                     <select id="task" name="task" class="form-control">
                        <option>Tác vụ</option>
                        <option value="delete">Xóa</option>
                        <option value="deactive">Ẩn</option>
                        <option value="active">Hiện</option>
                     </select>
                  </div>
                  <a href="NewGrammarForward" class="btn btn-submit"><small><i class="fa fa-plus"></i></small> Thêm bài mới</a>
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
                        <th>Tên bài ngữ pháp</th>
                        <th class="hidden-sm hidden-xs">Hình</th>
                        <th>Sửa</th>
                     </tr>
                       <c:forEach items="${listgrammarManage}" var="l">
                     <tr> 
                   
                      <td>
                           <input name="id[]" type="checkbox" value="0">
                        </td>
                		<td>${l.grammarid}</td>
                		<td>${l.grammarname}</td>
                		<td>${l.grammarimage}</td>
                		<td>
                        <a href="GrammarManageController?name=${l.grammarname}"><i class="fa fa-edit" data-toggle="tooltip" data-placement="top" title="Sửa sản phẩm"></i></a>
                        </td>
                     </tr>
                      </c:forEach>
                  </thead>
               
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
               <p class="note-items"><i class="fa fa-check text-success"></i> Hiển thị với người dùng.</p>
               <p class="note-items"><i class="fa fa-times text-danger"></i> Ẩn với người dùng</p>
            </div>
         </form>
      </div>
      <h2 style="color: blue" align="center"> <%=request.getAttribute("messageListgrammarManage")!=null?request.getAttribute("messageListgrammarManage"):" "%></h2>
        <h2 style="color: blue" align="center"> <%=request.getAttribute("messageupdate")!=null?request.getAttribute("messageupdate"):" "%></h2>
      
         </div>
         <!--END #main-->
   </body>
</html>
