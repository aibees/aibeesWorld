<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>AB WORLD : LOGIN</title>
	</head>
	<meta name="viewport" content="width=device-width">
	<!-- style css added /* 추후 resource에 css 파일로 따로 정리 필요 */ -->
	<style>
		html {
			background: #FF9182;
			background-opacity: 30%;
			height: 100%;
		}
		
		body {
			width: 100%;
			height: 100%;
			margin: auto;
		}
		
		.mainContainer {
			display: flex;
			justify-content: center;
			width: 30%;
			height: 100%;
			margin: auto;
			min-width: 475px;
			background-color: rgba(255, 255, 255, 0.45);
		}
		
		.loginFormContainer {
			width: fit-content;
			max-width: 50%;
			margin-top: 27%; 
		}
		
		.loginFormContainer .title {
			margin-top: 8%;
			text-align: center;
		}
		
		.loginFormContainer .loginForm {
			margin-top: 20%;
		}		
		
		.loginFormContainer .loginForm h2 {
			text-align: center;
		}
		
		.signService {
			display: flex;
			width: 100%;
			height: fit-content;
		}
		
		.signService .forgot {
			flex: 50%;
			text-align: left;
		}
		
		.signService .signUp {
			flex: 50%;
			text-align: right;
		}
	</style>
	<body>
		<div class="mainContainer">
			<div class="loginFormContainer">
				<div class="title">
					<h1>AB WORLD</h1>
					<h2>- LOGIN -</h2>
				</div>
				<hr>
				<div class="loginForm">
					<h2>LOGIN PAGE</h2>
					<span>
						<form name="lofingForm" method="post" action="/login.do">
							<input type="text" id="id" name="id" /> <br/>
							<input type="text" id="pwd" name="pwd" />
							<input type="submit" id="loginBtn" value="LOGIN" />
						</form>
					</span>
					<p></p>
					<div class="signService">
						<div class="forgot">
							<a href="login/forgotted.do">forget ID/PW</a>
						</div>
						<div class="signUp">
							<a href="login/signUp.do">Register</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</body>
</html>