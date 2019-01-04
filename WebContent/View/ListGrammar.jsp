<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Trang Chủ</title>
<!-- Bootstrap -->
<link href="Template/Frontend/css/bootstrap.css" rel="stylesheet">
<link href="Template/Frontend/css/bootstrap-responsive.css"
	rel="stylesheet">
<link href="Template/Frontend/css/style.css" rel="stylesheet">
<!--Font-->
<link href='Template/Frontend/font/font.css' rel='stylesheet'
	type='text/css'>
<link rel="shortcut icon" href="ico/favicon.ico">
 <style>
.pagination {
    display: inline-block;
}

.pagination a {
    color: black;
    float: left;
    padding: 8px 16px;
    text-decoration: none;
    border: 1px solid #ddd;
}

.pagination a.active {
    background-color: #4CAF50;
    color: white;
    border: 1px solid #4CAF50;
}

.pagination a:hover:not(.active) {background-color: #ddd;}

.pagination a:first-child {
    border-top-left-radius: 5px;
    border-bottom-left-radius: 5px;
}

.pagination a:last-child {
    border-top-right-radius: 5px;
    border-bottom-right-radius: 5px;
}
</style>


<!-- SCRIPT 
    ============================================================-->
<script src="Template/Frontend/js/jquery-add.js"></script>
<script src="Template/Frontend/js/bootstrap.min.js"></script>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

</head>
<body>
	<!--HEADER ROW-->
	<jsp:include page="Header.jsp"></jsp:include>
	<!-- /HEADER ROW -->

	<div class="container">

		<!--Carousel
  ==================================================-->

		

		<div class="row feature-box">
			<div class="span12 cnt-title">
				<h1>Hệ thống bài tập chất lượng!!!</h1>
				<span>Hãy thử một lần,ngày mai của bạn sẽ khác.</span>
			</div>
		<c:forEach items="${listgrammarshow}" var="l">
			<div class="span4">
				<img src="Template/Frontend/img/${l.grammarimage}">
				<h2>${l.grammarname}</h2>
				<a href="ListGrammarContentController?grammarid=${l.grammarid}"> Xem nội dung</a>

			</div>
		</c:forEach>
			

		</div>
<br>

	<div class="pagination"  >
  <a href="ListGrammarController?pageid=${numberpage-1}">&laquo;</a>
  <a href="ListGrammarController?pageid=1">1</a>
  <a href="ListGrammarController?pageid=2">2</a>
    <a href="ListGrammarController?pageid=3">3</a>
  <a href="ListGrammarController?pageid=${numberpage+1}">&raquo;</a>
	</div>


		


	<!--Footer
==========================-->
	<jsp:include page="Footer.jsp"></jsp:include>

	<!--/.Footer-->

</body>
</html>