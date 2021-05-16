/**
 * 
 */

function goJoin() {
	let member_position = document.querySelector('#position')
	let member_id = document.querySelector('#id');
	let member_numb = document.querySelector('#numb');
	let pw1 = document.querySelector('#pswd1');
	let pw2 = document.querySelector('#pswd2');

	let member_name = document.querySelector('#name');
	let dept_code = document.querySelector('#dept_code');

	let member_address = document.querySelector('#address');
	

	let yy = document.querySelector('#yy');
	let mm = document.querySelector('#mm');
	let dd = document.querySelector('#dd');
    
	

    
	
    let member_gender = document.querySelector('#gender');

	let member_email = document.querySelector('#email');

	let member_phone = document.querySelector('#mobile');

	if (!checkId()) {
		return false
	}
	if (!checkPw()) {
		return false
	}
	if (!comparePw()) {
		return false
	}
	if (!checkName()) {
		return false
	}
	if (!isBirthCompleted()) {
		return false
	}
	if (!isEmailCorrect()) {
		return false
	}
	if (!checkPhoneNum()) {
		return false
	}

	var form = document.createElement("form");
	form.setAttribute("charset", "UTF-8");
	form.setAttribute("method", "Post"); // Post 방식
	form.setAttribute("action", "./join.myuk"); // 요청 보낼 주소

	form.appendChild(member_position );
	form.appendChild(member_id );
	form.appendChild(member_numb );
	
	form.appendChild( pw1 );
	form.appendChild( member_name );
	form.appendChild( dept_code );
	form.appendChild( member_address );
	
	let birthday = (yy.value + '-' + mm.value + '-' + dd.value); 
	var birth = document.createElement("input");
	birth.setAttribute("type", "hidden");
	birth.setAttribute("name", "member_birth");
	birth.setAttribute("value", birthday);
	form.appendChild( birth );
	
	form.appendChild( member_gender );
	form.appendChild( member_email );
	form.appendChild( member_phone );

	document.body.appendChild(form);
    form.submit();
}
