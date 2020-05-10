<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>AB WORLD : REGISTER</title>

<script src="/resources/plugins/jQuery/jQuery-2.1.4.min.js"></script>
<script type="text/javascript">
	const init = function(result) {
		const check = result;
		if(check == "success") {
			alert("회원가입 해주셔서 감사합니다.")
			document.location.href="main.do";
		} else {
			alert("회원가입 실패입니다. 다시 시도해 주세요.")
			document.location.href="signUp.do";
		}
	}
</script>
</head>
<body onload="init(`${resultFlag}`);">

</body>
</html>