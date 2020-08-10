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
		
		#trIdCheck {
			display: none;
			text-align: -webkit-center;
			color: blue;
			font-size: smaller;
			font-weight: bold;
		}
	</style>

	<script src="//code.jquery.com/jquery-3.2.1.min.js"></script>
	<script type="text/javascript">
	
		const idCheckFunc = function() {
			const idText = $('#idInput').val()
			document.getElementById('idCheck').innerHTML = ("<smaller>" + idText + "는<br/>사용 가능한 아이디 입니다.<br/>지금 이 기능은 무용지물<smaller>")
			document.getElementById('trIdCheck').style.display = 'block';
		}
		
		const onlyNumber = function(event) {
			var keyCode = event.keyCode;
			
			if((keyCode >= 48) && (keyCode <= 57)) {
				return true;
			}
			else {
				return false;
			}
		}
		
		const setPhoneFunc = function() {
			//regex
			const regex = new RegExp("\d{11}");
			
			const phone = $('#phone').val()
			const regret = regex.exec(phone)
			if(phone.length != 11) {
				alert("정확한 전화번호를 입력해주세요.");
				return;
			}
			
			const phonearr = new Array();
			phonearr[0] = phone.substr(0,3);
			phonearr[1] = phone.substr(3,4);
			phonearr[2] = phone.substr(7,4);
			
			$('#phone').val(phonearr[0]+"-"+phonearr[1]+"-"+phonearr[2])
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
					<form name="registerForm" id="registerForm" method="post" action="/registerPost.do">
						<table >
							<tr>
							  <td>하고싶은 아이디</td>
							</tr>
							<tr>
							  <td><input id="idInput" type="text" name="id" onfocusout="idCheckFunc()"/></td>
							</tr>
							<tr id="trIdCheck">
							  <td><span id="idCheck" style="text-align: center;margin: auto;"></span></td>
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
							  <td>전화번호<br/><small>전화 안걸거니까 안심하세요.</small></td>
							</tr>
							<tr>
							  <td><input id="phone" class="phoneEdit" type="tel" name="phone" value="" maxlength="11" onKeyPress="return onlyNumber(event);" onChange="setPhoneFunc()"/></td>
							</tr>
							<tr>
							  <td><input type="submit" id="signupBtn" value="REGISTER"/></td>
							</tr>
							<input type="hidden" name="role" value="visit" />
						</table>
					</form>
				</div>
			</div>
		</div>
	</body>
</html>