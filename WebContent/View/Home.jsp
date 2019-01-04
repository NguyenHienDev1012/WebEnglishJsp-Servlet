<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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

		<div id="myCarousel" class="carousel slide">
			<div class="carousel-inner">

				<div class="active item">
					<div class="container">
						<div class="row">

							<div class="span6">

								<div class="carousel-caption">
									<h1>Luyện thi IELTS đảm bảo</h1>
									<p class="lead">Với đội ngũ giáo viên là những chuyên gia
										xuất sắc, cùng phương pháp giảng dạy, giáo trình chuẩn quốc
										tế, trung tâm sẽ đồng hành cùng học viên trong hành trình
										trinh phục IELTS, bước ra thế giới.Đồng thời trung tâm cũng là
										nơi giúp bạn có cái nhìn tổng quan về con đường sự nghiệp học
										tiếng anh của mình.Bạn sẽ có được những thành quả mà bạn chưa
										từng nghĩ sẽ đạt được khi học tại trung tâm.</p>
								</div>

							</div>

							<div class="span6">
								<img src="Template/Frontend/img/slide/slidebanner1.png">
							</div>

						</div>
					</div>




				</div>
				<c:forEach items="${listslidebanner}" var="list">

					<div class="item">

						<div class="container">
							<div class="row">

								<div class="span6">

									<div class="carousel-caption">
										<h1>${list.slidename}</h1>
										<p class="lead">${list.slidecontent }</p>
									</div>

								</div>

								<div class="span6">
									<img src="Template/Frontend/img/slide/${list.slideimage}">
								</div>

							</div>
						</div>

					</div>

				</c:forEach>



			</div>
			<!-- Carousel nav -->
			<a class="carousel-control left " href="#myCarousel"
				data-slide="prev"><i class="icon-chevron-left"></i></a> <a
				class="carousel-control right" href="#myCarousel" data-slide="next"><i
				class="icon-chevron-right"></i></a>
			<!-- /.Carousel nav -->

		</div>
		<!-- /Carousel -->
		<!-- Feature 
  ==============================================-->

		<div class="row feature-box">
			<div class="span12 cnt-title">
				<h1>Tiếng anh sẽ thay đổi cuộc đời bạn!!!</h1>
				<span>Hãy thử một lần,ngày mai của bạn sẽ khác.</span>
			</div>

			<div class="span4">
				<img src="Template/Frontend/img/course.png">
				<h2>Khóa học</h2>
				<p>Đa dạng các khoá học TOEIC, khoá học IELTS, khoá học tiếng
					anh giao tiếp cho bạn lựa chọn. Giúp việc học trở nên dễ dàng hơn</p>

				<a href="#">Read More &rarr;</a>

			</div>

			<div class="span4">
				<img src="Template/Frontend/img/listenenglish.png">
				<h2>Luyện nghe</h2>
				<p>Phần này dành cho người mới học nghe Tiếng Anh cần giúp đỡ để
					nghe ,hiểu được các điều căn bản của việc luyện nghe Tiếng Anh.</p>
				<a href="#">Read More &rarr;</a>
			</div>

			<div class="span4">
				<a href="ListGrammarController?pageid=1"><img src="Template/Frontend/img/grammar.jpg"></a>
				<h2>Ngữ pháp cơ bản</h2>
				<p>Bao gồm các bài học ngữ pháp căn bản cho người mất gốc,lấy
					lại kiến thức nền tảng của ngữ pháp tiếng anh.</p>
				<a href="#">Read More &rarr;</a>
			</div>
		</div>


		<div class="row feature-box">

			<div class="span4">
				<img src="Template/Frontend/img/hocbai.jpg">
				<h2>Từ vựng theo chủ đề</h2>
				<p>Hệ thống bài học từ vựng được xây dựng một cách khoa học
					,logic,sắp xếp theo từng chủ đề giúp cho học viên dễ học và dễ tiếp
					thu.Đó là sứ mệnh của trung tâm chúng tôi phải làm được cho học
					viên của mình.</p>

				<a href="#">Read More &rarr;</a>

			</div>

			<div class="span4">
				<img src="Template/Frontend/img/lambaitap.jpg">
				<h2>Bài Tập</h2>
				<p>Bài tập tiếng anh theo từng phần riêng biệt,có trọng tâm ôn
					thi B1,TOEIC,IELTS...giúp học viên thành thạo các dạng bài tập sát
					với đề thi,giúp học viên luyện thi có hiệu quả.</p>
				<a href="#">Read More &rarr;</a>
			</div>

			<div class="span4">
				<img src="Template/Frontend/img/thithu.jpeg">
				<h2>Thi Thử Online</h2>
				<p>Hệ thống các đề thi thử được tổng hợp từ nhiều nguồn và được
					các thầy cô tại trung tâm biên soạn và sắp xếp theo từng mức độ để
					học viên có thể nâng cao tốc độ làm đề thi và thích ứng được sự
					thay đổi của đề thi.</p>
				<a href="#">Read More &rarr;</a>
			</div>
		</div>


		<!-- /.Feature -->

		<div class="hr-divider"></div>

		<!-- Row View -->


		<div class="row">
			<div class="span6">
				<iframe width="560" height="315"
					src="https://www.youtube.com/embed/Nrl0YLC-KtM" frameborder="0"
					allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
					allowfullscreen></iframe>
			</div>

			<div class="span6">
				<img class="hidden-phone" src="Template/Frontend/img/slidecuoi2.jpg"
					alt="">
				<h1>Tại sao bạn phải học tiếng anh?</h1>
				<p>Hãy cho bản thân mình thời gian. Hãy tưởng thưởng cho mình.
					Hãy xem bạn trông tuyệt vời thế nào, cuộc sống của bạn thay đổi ra
					sao nếu tiếng Anh không còn là củ cà rốt treo trước mặt. Bạn có thể
					làm được những gì? Bạn đi xa đến đâu? Thế giới của bạn rộng lớn
					nhường nào? Hay chỉ đơn giản là thưởng thức một bộ phim bom tấn
					Hollywood vào một buổi chiều thứ 7 ấm áp mà không cần phụ đề? Hãy
					cứ tiến lên phía trước, ai biết được những điều gì đang chờ đợi
					bạn!</p>
				<a href="#">Read More &rarr;</a>
			</div>
		</div>


	</div>


	<!-- /.Row View -->



	<!--Footer
==========================-->
	<jsp:include page="Footer.jsp"></jsp:include>

	<!--/.Footer-->

</body>
</html>