<%@page import="BEAN.Grammar"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <base href=".">
      <meta charset="utf-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <title>Quản lý phần ngữ pháp</title>
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
            <li><a href="index.html"><i class="fa fa-home"></i> Trang quản trị</a></li>
            <li class="active"><a href="ListGrammarManageForward">Quản lý bài ngữ pháp</a></li>
            <li class="active"><a href="GrammarManageForward">Thêm bài mới</a></li>
         </ol>
         
         <div class="col-xs-12">
         <%Grammar grammar=(Grammar)request.getAttribute("grammarchange"); %>
            <form id="admin-form" class="form-horizontal col-xl-9 col-lg-10 col-md-12 col-sm-12" method="post" action="GrammarManageUpdateController"  role="form">
               <input name="id" type="hidden" value="0">
               <div class="form-group">
                  <label for="title" class="col-sm-3 control-label required">Tên bài ngữ pháp  </label>
                  <div class="col-sm-9">
                     <input name="grammarname" type="text" value="<%=grammar.getGrammarname()%>" class="form-control" id="title" placeholder="" required="" maxlength="100" readonly="readonly">
                  </div>
               </div>
               <div class="form-group">
                  <label for="keywords" class="col-sm-3 control-label">Hình</label>
                  <div class="col-sm-9">
                     <input name="grammarimage" type="text" value="<%=grammar.getGrammarimage()%>" class="form-control" id="keywords" placeholder="" maxlength="255">
                  </div>
               </div>
               
               <div class="form-group">
                  <label for="content" class="col-sm-3 control-label">Nội dung</label>
                  <div class="col-sm-9">
                       <textarea name="grammarcontent" rows="5" class="form-control ckeditor" id="content" placeholder=""  ><%=grammar.getGrammarcontent()%></textarea>
                   </div>
                </div>
                     <div class="col-sm-offset-3 col-sm-9">
                         <button type="submit" class="btn btn-submit"><small><i class="fa fa-plus"></i></small> Cập nhật</button>
                        <a class="btn btn-warning" href="ListGrammarManageForward"><small><i class="fa fa-reply"></i></small> Trở về</a>
                     </div>
                  </div>
            </form>
            
            </div>
         </div>
         <!--END #main-->
      </div>
<script type="text/javascript" src="Template/Backend/Admin/plugins/ckeditor/ckeditor.js"></script>
<script type="text/javascript" src="Template/Backend/Admin/plugins/ckfinder/ckfinder.js"></script>
<script>
    var editor = CKEDITOR.replace( 'content', {
    filebrowserBrowseUrl : 'plugins/ckfinder/ckfinder.html',
    filebrowserImageBrowseUrl : 'plugins/ckfinder/ckfinder.html?type=Images',
    filebrowserFlashBrowseUrl : 'plugins/ckfinder/ckfinder.html?type=Flash',
    filebrowserUploadUrl : 'plugins/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Files',
    filebrowserImageUploadUrl : 'plugins/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Images',
    filebrowserFlashUploadUrl : 'plugins/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Flash'
});
CKFinder.setupCKEditor( editor, '../' );
</script>
<style>
   .btn {margin-bottom: 10px;}
</style>
   </body>
</html>
