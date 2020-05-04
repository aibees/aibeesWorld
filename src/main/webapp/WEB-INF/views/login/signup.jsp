<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>AB WORLD : REGISTER</title>
		
		<script src="/resources/plugins/jQuery/jQuery-2.1.4.min.js"></script>
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
	
	<script type="text/javascript">
		function ajaxRegister() {
			const params = $('#registerForm').serialize();
			alert(params)
		 	$.ajax({
				url: 'register.do',
				type: 'POST',
				data: params,
				contentType: 'application/x-www-form-urlencoded; charset=UTF-8',
				dataType: 'html',
				success: function(result) {
					alert(result)
				}
			}) 
		}
	</script>
	<body>
		<div class="mainContainer">
			<div class="loginFormContainer">
				<div class="title">
					<h1>AB WORLD</h1>
					<h2>- REGISTER -</h2>
				</div>
				<hr>
				<div class="loginForm">
					<h2>LOGIN PAGE</h2>
					<form name="registerForm" id="registerForm">
						<table >
							<tr>
							  <td>아이디</td>
							  <td><input type="text" name="id" placeholder="ID를 입력하세요." /></td>
							  <td><Button id="distinctID" onClick="AjaxdistinctId()">중복확인</Button></td>
							</tr>
							<tr>
							  <td>비밀번호</td>
							  <td><input type="password" name="pwd" placeholder="Password를 입력하세요." /></td>
							</tr>
							<tr>
							  <td>이름</td>
							  <td><input type="text" name="name" placeholder="이름을 입력하세요." /></td>
							</tr>
							<input type="hidden" name="role" value="visited" />
						</table>
						<input type="submit" id="signupBtn" value="REGISTER" onClick="ajaxRegister()"/>
					</form>
				</div>
			</div>
		</div>
	</body>
</html>