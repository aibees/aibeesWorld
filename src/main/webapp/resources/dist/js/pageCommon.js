function setMenuTitle(id) {
	const idVal = (id.split('_'))[0]
	const txt = $(document.getElementById(id)).text()
	// Change menuname_header text
	var ret_head = ""
	if(idVal == "diary") {
		ret_head = "다이어리"
	}
	else if(idVal == "dash") {
		ret_head = "게시판"
	}
	else if(idVal == "chart") {
		ret_head = "차트"
	}
	else if(idVal == "schedule") {
		ret_head = "스케쥴"
	}
	
	$("menuname_header").text(ret_head)
	$("menuname_header_small").text(txt)
}

$