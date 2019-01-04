<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Forgot Password</title>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<br><br><br>

<div class="container">
  <form action="ForgotPassController" method="post">
  <h1 style="color: red"><%=request.getAttribute("messageMail")!=null?request.getAttribute("messageMail"):"" %></h1>
     <div class="form-group">
      <label for="email">Email:</label>
      <input type="email" class="form-control" id="email" placeholder="Nhập Email bạn đã đăng ký :" name="email">
    </div>
    <button type="submit" class="btn btn-default">Gửi</button> <h3><a href="LoginForward" style="color: red">Đăng Nhập</a></h3>
  </form>
</div>

</body>
</html>
