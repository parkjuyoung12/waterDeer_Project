/**
 * 
 */
/*else if (document.frm.id.value != document.frm.reid.value) {
		alert("아이디 중복체크를 해주세요");*/
function go_save() {
	if (document.frm.id.value == "") {
		alert("아이디를 입력해주세요");
		document.frm.id.focus();
	}else if(document.frm.reid.value == "-1"){
		document.frm.reid.focus();
	}else if (document.frm.pwd.value == "") {
		alert("비밀번호를 입력해 주세요");
		document.frm.pwd.focus();
	} else if (document.frm.pwd.value != document.frm.pwdCheck.value) {
		alert("비밀번호가 일치하지 않습니다");
	} else if (document.frm.name.values == "") {
		alert("이름을 입력해 주세요");
		document.frm.name.focus();
	} else if (document.frm.email.value == "") {
		alert("이메일을 입력해 주세요");
		document.frm.email.focus();
	} else {
		document.frm.action = "join.bizpoll";
		document.frm.submit();
	}
}

function idcheck() {
	if (document.frm.id.value == "") {
		alert("아이디를 입력해 주세요");
		document.frm.id.focus();
		return ;
	}
	
	var url = "id_check_form.bizpoll?id=" + document.frm.id.value;
	
	var w = 400;
	var h = 200;
	
	var LeftPosition = (screen.width-w)/2;
	var TopPosition = (screen.height-h)/2;
	var RightPosition = ((screen.width-w)/2) + w;
	
	window.open(url, "_blank_1", "toolbar=no, menubar=no, scrollbars=yes, resizeable=no, width=" + w + ", height=" + h +", top=" + TopPosition + ", left=" + LeftPosition +", right=" + RightPosition);
}

function go_next() {
	if(document.frm.okon1[0].checked == true) {
		document.frm.action = "join_form.bizpoll";
		document.frm.submit();
	} else if (document.frm.okon1[1].checked == true) {
		alert("약관에 동의하셔야만 합니다.");
	}
}
