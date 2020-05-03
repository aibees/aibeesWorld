<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>AB WORLD : DENIED</title>
</head>
<body>
	<script type="text/javascript">
		var message = '${setAlert}'
		var url = '${url}'
		
		if('loginForm.do' == url) {
			loginCheck = confirm(message)
			if(loginCheck) {
				url = 'loginForm.do'
			}
		}
		else {
			alert(message)
		}
		
		location.href = url
	</script>
</body>
</html>