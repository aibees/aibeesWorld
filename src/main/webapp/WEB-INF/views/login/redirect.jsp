<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script src="/resources/plugins/jQuery/jQuery-2.1.4.min.js"></script>
<script type="text/javascript">
	const init = function() {
		const check = confirm("세션 정보가 없습니다. 로그인페이지로 이동하시겠습니까?");
		if(check) {
			document.location.href="loginForm.do";
		} else {
			document.location.href="main.do";
		}
	}
</script>
</head>
<body onload="init();">

</body>
</html>