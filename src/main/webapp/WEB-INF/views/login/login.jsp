<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>AB WORLD : LOGIN</title>
	</head>
	<body>
		<div>
			<form name="lofingForm" method="post" action="/login.do">
				<input type="text" id="id" name="id" /> <br/>
				<input type="text" id="pwd" name="pwd" />
				<input type="submit" id="loginBtn" value="LOGIN" />
			</form>
		</div>
	</body>
</html>