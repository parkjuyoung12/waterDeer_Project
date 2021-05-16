/**
 * noticeview.jsp에서 호출
 */

function  onSubmitAction(obj) {
	if( !isWriter() ) {
		obj.setAttribute('disabled', 'disabled')
		obj.setAttribute('hidden', 'hidden')
		obj.setAttribute('style', 'display: none;')
		return false;
	}
	return true;
}

function ckAndDelete(obj) {
	if( !isWriter() ) {
		obj.setAttribute('disabled', 'disabled')
		obj.setAttribute('hidden', 'hidden')
		obj.setAttribute('style', 'display: none;')
		return false;
	}
	
	let confirmed = confirm('정말 지우시겠습니까?')
	if(confirmed==true) {
		let form = document.querySelector('#notice_view_btn_form');
		form.setAttribute('action', 'noticedelete.myuk')
		form.setAttribute('method', 'post')
		form.appendChild( document.querySelector("#num") )
		alert('came')
		form.submit();
	}
}

function ckAndDelete1(obj) {
	if( !isWriter() ) {
		obj.setAttribute('disabled', 'disabled')
		obj.setAttribute('hidden', 'hidden')
		obj.setAttribute('style', 'display: none;')
		return false;
	}
	
	let confirmed = confirm('정말 지우시겠습니까?')
	if(confirmed==true) {
		let form = document.querySelector('#notice_view_btn_form');
		form.setAttribute('action', 'qnadelete.myuk')
		form.setAttribute('method', 'post')
		form.appendChild( document.querySelector("#num") )
		alert('came')
		form.submit();
	}
}

/** 사용자와 글쓴이 일치하는지 확인(프론트 단계에서도) */
function isWriter() {
	return loginUserPosition=='PROF'
}

function isWriter() {
	return loginUserPosition=='STUD'
}