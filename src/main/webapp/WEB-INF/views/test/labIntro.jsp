<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html id="base">
<head>
<meta charset="EUC-KR">
<title>AB LABORATORY : INTRO</title>

<script src="/resources/plugins/jQuery/jQuery-2.1.4.min.js"></script>
</head>
<meta name="viewport" content="width=device-width">
<style>
html {
	background-color: #000;
	display: inline-block;
	height: 100%;
}

body {
	margin: 30px;
	display: block;
	height: 100%;
	width: 100%;
}

/* class css setting */
/* flex setting */
.container {
	display: flex;
	width: 100%;
	overflow: auto;
	height: -webkit-fill-available;
	border: solid 5px #fff;
}

.container #daeun {
	width: 50%;
	background-image: url( "/img/photo/daeun.jpg" );
	background-repeat: no-repeat;
	background-size: cover;
}

#daeunDiv {
	width: 100%;
	height: 100%;
	background-color: #000;
	opacity: 65%;
}

.container #junseo {
	width: 50%;
	background-image: url( "/img/photo/junseo.jpg" );
	background-repeat: no-repeat;
	background-size: contain;
}

#junseoDiv {
	width: 100%;
	height: 100%;
	background-color: #000;
	opacity: 65%;
}

/* element id setting */
</style>
<body>
	<div class="container">
		<div id="daeun">
			<a href="/labD.do"><div id="daeunDiv"></div></a>
		</div>
		<div id="junseo">
			<a href="/labJ.do"><div id="junseoDiv"></div></a>
		</div>
	</div>
</body>

<script>
	$("#daeunDiv").mouseover(function() {
		$(this).css("opacity", "0%");
	})
	
	$("#junseoDiv").mouseover(function() {
		$(this).css("opacity", "0%");
	})
	
	$("#daeunDiv").mouseleave(function() {
		$(this).css("opacity", "65%");
	})
	
	$("#junseoDiv").mouseleave(function() {
		$(this).css("opacity", "65%");
	})
	
	
</script>
</html>