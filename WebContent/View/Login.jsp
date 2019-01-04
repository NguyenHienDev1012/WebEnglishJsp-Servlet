<!DOCTYPE html>
<html lang="en" >

<head>
  <meta charset="UTF-8">
  <title>Login Form</title>
  
  
  <link rel='stylesheet' href='Template/Backend/cssformlogin/font.css'>

      <link rel="stylesheet" href="Template/Backend/cssformlogin/style.css">

  
</head>

<body>

  <div class="login-wrap">
	<div class="login-html">
		<input id="tab-1" type="radio" name="tab" class="sign-in" checked><label for="tab-1" class="tab">Sign in</label>
		<input id="tab-2" type="radio" name="tab" class="sign-up"><label for="tab-2" class="tab"></label>
		<div class="login-form">
			<div class="sign-in-htm">
			<form method="post" action="LoginController">
			<label for="pass" class="label" style="color: red"> <%=request.getAttribute("messeageLogin") != null ? request.getAttribute("messeageLogin") : " "%></label>
				<div class="group">
					<label for="user" class="label">Username</label>
					<input id="user" type="text" class="input" name="username">
				</div>
				<div class="group">
					<label for="pass" class="label">Password</label>
					<input id="pass" type="password" class="input" data-type="password" name="password">
				</div>
				<div class="group">
					<input id="check" type="checkbox" class="check" checked>
					<label for="check"><span class="icon"></span> Keep me Signed in</label>
				</div>
				<div class="group">
					<input type="submit" class="button" value="Sign In">
				</div>
				<div class="hr"></div>
				<div class="foot-lnk">
				<a href="HomeForward" style="color: red;">Go Home||</a>
					<a href="RegisterForward" style="color: red;">Sign Up||</a>
					<a href="ForgotPassForward" style="color: red;">Forgot Password?</a>
				</div>
				</form>
			</div>
		</div>
	</div>
</div>
  
  

</body>

</html>
