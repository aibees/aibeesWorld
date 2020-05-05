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
			background: #FFBB77;
			background-opacity: 30%;
			height: 100%;
		}
		
		body {
			width: 100%;
			height: 100%;
			margin: auto;
		}
		
		a {
			color: #343434;
			text-decoration:none;
		}
		
		table {
			width: 80%;
			text-align: center;
			margin: auto;
		}
		
		input {
			border: 0px;
			width: 80%;
			height: 20px;
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
/* 			display: block; */
			width: 100%;
			max-width: 70%;
			margin-top: 27%; 
		}
		
		.loginFormContainer .title {
			margin-top: 8%;
			text-align: center;
		}
		
		.loginFormContainer .loginForm {
			text-align: center;
			margin-top: 20%;
		}		
		
		.loginFormContainer .loginForm h2 {
			text-align: center;
		}
		
		#loginForm {
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
		
		#loginBtn {
			height: 28px;
			font-weight: 850;
			color: white;
			background-color: #95E0C8;
			margin-top: 15px;
		}
	</style>
	<body>
		<div class="mainContainer">
			<div class="loginFormContainer">
				<div class="title">
					<a href="/main.do"><h1>AB WORLD</h1></a>
					<h2>- LOGIN -</h2>
				</div>
				<hr>
				<div class="loginForm">
					<h2>LOGIN PAGE</h2>
					<span>
						<form id="loginForm" name="loginForm" method="post" action="/login.do">
							<table>
								<tr>
								  <td><b>아이디</b></td>
								</tr>
								<tr>
								  <td><input type="text" id="id" name="id" /></td>
								</tr>
								<tr>
								  <td><b>비밀번호</b></td>
								</tr>
								<tr>
								  <td><input type="text" id="pwd" name="pwd" /></td>
								</tr>
								<tr>
								  <td><input type="submit" id="loginBtn" value="LOGIN" /></td>
								</tr>
							</table>
						</form>
					</span>
					<p></p>
					<div class="signService">
						<div class="forgot">
							<a href="/login/forgotted.do">ID/PW를 알려주세요</a>
						</div>
						<div class="signUp">
							<a href="/signUp.do">회원가입</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</body>
</html>