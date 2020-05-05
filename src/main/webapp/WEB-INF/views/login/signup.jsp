<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
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
			display: block;
			width: 100%;
			max-width: 70%;
			margin-top: 27%; 
		}
		
		.loginFormContainer .title {
			margin-top: 8%;
			text-align: center;
		}
		
		.loginFormContainer .loginForm {
			margin-top: 20%;
			text-align
		}		
		
		.loginFormContainer .loginForm h2 {
			text-align: center;
		}
		
		#signupBtn {
			height: 28px;
			font-weight: 850;
			color: white;
			background-color: #95E0C8;
			margin-top: 15px;
		}
	</style>
	
	<script src="/resources/plugins/jQuery/jQuery-2.1.4.min.js"></script>
	<script type="text/javascript">
		$('idInput').focusout(function() {
			alert("test")
			const idText = $(this).text()
			alert(idText)
			$('idCheck').text(idText + "는 사용 가능한 아이디 입니다.")
			$('idCheck').style.display = '';
		})
	
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
					<a href="/main.do"><h1>AB WORLD</h1></a>
					<h2>- REGISTER -</h2>
				</div>
				<hr>
				<div class="loginForm">
					<h2>REGISTER PAGE</h2>
					<form name="registerForm" id="registerForm">
						<table >
							<tr>
							  <td>하고싶은 아이디</td>
							</tr>
							<tr>
							  <td id="idInput"><input type="text" name="id" /></td>
							</tr>
							<tr id="trIdCheck" style="display: none;">
							  <td><span id="idCheck"></span></td>
							</tr>
							<tr>
							  <td><small>아이디와는 다른</small><br/>비밀번호</td>
							</tr>
							<tr>
							  <td><input type="password" name="pwd" /></td>
							</tr>
							<tr>
							  <td>이름<br/><small>( 별명 말구 실명으로 해주세요 )</small></td>
							</tr>
							<tr>
							  <td><input type="text" name="name" /></td>
							</tr>
							<tr>
							  <td><input type="submit" id="signupBtn" value="REGISTER" onClick="ajaxRegister()"/></td>
							</tr>
							<input type="hidden" name="role" value="visited" />
						</table>
					</form>
				</div>
			</div>
		</div>
	</body>
</html>