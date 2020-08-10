<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html id="base" onLoad="setSize()">
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
}

body {
	margin: 30px;
	display: block;
	height: auto;
	width: auto;
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
<body onLoad="startLoading()">
	<div class="container">
		<div id="daeun">
			<div id="daeunDiv"></div>
		</div>
		<div id="junseo">
			<div id="junseoDiv"></div>
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
	
	$("#daeunDiv").onClick

	function setSize() {
		$('body').setAttribute("height", $(window).Width() - 100)
	}
	
	function startLoading() {
		
	}
</script>
</html>