<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel='stylesheet' href='Template/Backend/cssformlogin/font.css'>
<link rel="stylesheet" href="Template/Backend/cssformlogin/style.css">
<title>Đăng Ký</title>
</head>
<body>

	<script type="text/javascript">
function Validate(){
	var membername=document.myform.username.value;
	var memberemail=document.myform.email.value;
	var password=document.myform.password.value;
	if(membername=""||memberemail==""||password==""){
		alert("Vui lòng nhập đầy đủ thông tin");
		return false;
	}
	else{
		if(password.length<=6){
			document.getElementById("erropass").innerHTML="Độ dài password phải lớn hơn 6";
			return false;
		}
	}
}


</script>



	<div class="login-wrap">
		<div class="login-html">
			<input id="tab-1" type="radio" name="tab" class="sign-in" checked><label
				for="tab-1" class="tab">Sign Up</label> <input id="tab-2"
				type="radio" name="tab" class="sign-up"><label for="tab-2"
				class="tab"></label>

			<div class="login-form">
				<form name="myform" action="RegisterController" method="post" onsubmit="return Validate() ">
					<div class="sign-in-htm">
					<label for="user" class="label" style="color: red"><%=request.getAttribute("erremail") != null ? request.getAttribute("erremail") : " "%></label>
						<label for="user" class="label" style="color: red"><%=request.getAttribute("msgregister") != null ? request.getAttribute("msgregister") : " "%></label>
						<div class="group">
							<label for="user" class="label">Username</label> <input id="user"
								type="text" class="input" name="username">
						</div>

						<div class="group">
							<label for="pass" class="label">Email Address</label> <input
								id="pass" type="text" class="input" name="email">
						</div>
						<div class="group">
							<label for="pass" class="label">Password</label> <input id="pass"
								type="password" class="input" data-type="password"
								name="password" onkeyup="Validate()">
						</div>
						<label for="pass" class="label" id="erropass" style="color: red"></label>

						<div class="group">
							<input type="submit" class="button" value="Sign Up">
						</div>
						<div class="hr"></div>
						<a href="LoginForward" style="color: red">You already Member?||</a>
					    <a href="HomeForward" style="color: red;">Go Back Home</a>
						
					</div>
			</div>
			</form>
		</div>

	</div>

	</div>

</body>
</html>