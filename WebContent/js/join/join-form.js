
/*변수 선언*/
var id = document.querySelector('#id');

var pw1 = document.querySelector('#pswd1');
var pwMsg = document.querySelector('#alertTxt');
var pwImg1 = document.querySelector('#pswd1_img1');

var pw2 = document.querySelector('#pswd2');
var pwImg2 = document.querySelector('#pswd2_img1');
var pwMsgArea = document.querySelector('.int_pass');

var userName = document.querySelector('#name');

var yy = document.querySelector('#yy');
var mm = document.querySelector('#mm');
var dd = document.querySelector('#dd');

var gender = document.querySelector('#gender');

var email = document.querySelector('#email');

var mobile = document.querySelector('#mobile');

var error = document.querySelectorAll('.error_next_box');

let err_box_dict = {
		position: 0
		, id: 1
		, numb: 2
		, pw1: 3
		, pw2: 4
		, name: 5
		, department: 6
		, address: 7
		, birth: 8
		, gender: 9
		, email: 10
		, phone: 11
}

/*이벤트 핸들러 연결*/


id.addEventListener("keyup", checkId);
pw1.addEventListener("keyup", checkPw);
pw2.addEventListener("keyup", comparePw);
userName.addEventListener("keyup", checkName);
yy.addEventListener("keyup", isBirthCompleted);
mm.addEventListener("keyup", isBirthCompleted);
dd.addEventListener("keyup", isBirthCompleted);
gender.addEventListener("keyup", function() {
    if(gender.value === "성별") {
        error[5].style.display = "block";
    } else {
        error[5].style.display = "none";
    }
})
email.addEventListener("keyup", isEmailCorrect);
mobile.addEventListener("keyup", checkPhoneNum);





/*콜백 함수*/
function checkId() {
    var idPattern = /[a-zA-Z0-9_-]{5,20}/;
    if(id.value === "") {
        error[err_box_dict.id].innerHTML = "필수 정보입니다.";
        error[err_box_dict.id].style.display = "block";
        return false;
    } else if(!idPattern.test(id.value)) {
        error[err_box_dict.id].innerHTML = "5~20자의 영문 소문자, 숫자와 특수기호(_),(-)만 사용 가능합니다.";
        error[err_box_dict.id].style.display = "block";
        return false;
    } else {
    	// TODO AJAX: 아이디 중복 체크
        error[err_box_dict.id].innerHTML = "에이잭스 넣어 주세요!";
        error[err_box_dict.id].style.color = "#08A600";
        error[err_box_dict.id].style.display = "block";
        return true;
    }
}

function checkPw() {
	let cnt = 	(/[A-Z|a-z]/).test(pw1.value)
				+ (/[0-9]/).test(pw1.value)
				+ (/[#?!@$%^&*-]/).test(pw1.value);
//return this.optional(element)
//	|| (value.test(/[A-Z|a-z|0-9|#?!@$%^&*-]/) 	// 영문, 숫자, 특수문자 허용
//	&& !value.test(/[^A-Z|a-z|0-9|#?!@$%^&*-]/)	// 그 외에 허용하지 않음
////	&& value.length >= 5
//	&& cnt >= 2)
	
    var pwPatternIncl = /[A-Z|a-z|0-9|#?!@$%^&*-]/;
    var pwPatternExte = /[^A-Z|a-z|0-9|#?!@$%^&*-]/;
    var lentest = pw1.value.length >= 5;
    
    if(pw1.value === "") {
        error[err_box_dict.pw1].innerHTML = "필수 정보입니다.";
        error[err_box_dict.pw1].style.display = "block";
        return false
    } else if( !(pwPatternIncl.test(pw1.value)
    		&& !pwPatternExte.test(pw1.value)
    		&& lentest
    		&& cnt>=2 ) ) {
        error[err_box_dict.pw1].innerHTML = "8~16자 영문 대 소문자, 숫자, 특수문자를 사용하세요.";
        pwMsg.innerHTML = "사용불가";
        pwMsgArea.style.paddingRight = "93px";
        error[err_box_dict.pw1].style.display = "block";
        
        pwMsg.style.display = "block";
        pwImg1.src = "css/login/m_icon_not_use.png";
        return false
    } else {
        error[err_box_dict.pw1].style.display = "none";
        pwMsg.innerHTML = "안전";
        pwMsg.style.display = "block";
        pwMsg.style.color = "#03c75a";
        pwImg1.src = "css/login/m_icon_safe.png";
        return true
    }
}

function comparePw() {
    if(pw2.value === pw1.value && pw2.value != "") {
        pwImg2.src = "css/login/m_icon_check_enable.png";
        error[err_box_dict.pw2].style.display = "none";
        return true
    } else if(pw2.value !== pw1.value) {
        pwImg2.src = "css/login/m_icon_check_disable.png";
        error[err_box_dict.pw2].innerHTML = "비밀번호가 일치하지 않습니다.";
        error[err_box_dict.pw2].style.display = "block";
        return false
    } 

    if(pw2.value === "") {
        error[err_box_dict.pw2].innerHTML = "필수 정보입니다.";
        error[err_box_dict.pw2].style.display = "block";
        return false
    }
}

function checkName() {
    var namePattern = /[a-zA-Z가-힣]/;
    if(userName.value === "") {
        error[err_box_dict.name].innerHTML = "필수 정보입니다.";
        error[err_box_dict.name].style.display = "block";
        return false
    } else if(!namePattern.test(userName.value) || userName.value.indexOf(" ") > -1) {
        error[err_box_dict.name].innerHTML = "한글과 영문 대 소문자를 사용하세요. (특수기호, 공백 사용 불가)";
        error[err_box_dict.name].style.display = "block";
        return false
    } else {
        error[err_box_dict.name].style.display = "none";
        return true
    }
}


function isBirthCompleted() {
    var yearPattern = /[0-9]{4}/;
    console.log('isDateCompleted ==> dd.value: '+dd.value);
    console.log('isDateCompleted ==> reg.test(yy): '+  !yearPattern.test(yy.value));
    console.log('isDateCompleted ==> (dd.value === ""): '+  (dd.value === '') );
	
    if(!yearPattern.test(yy.value)) {
        error[err_box_dict.birth].innerHTML = "태어난 년도 4자리를 정확하게 입력하세요.";
        error[err_box_dict.birth].style.display = "block";
        return false
    } else {
        return isMonthSelected();
    }

    function isMonthSelected() {
        if(mm.value === "월") {
            error[err_box_dict.birth].style.display = "block";
            error[err_box_dict.birth].innerHTML = "태어난 월을 선택하세요.";
            return false
        } else {
            return isDateCompleted();
        }
    }

    function isDateCompleted() {
        if(dd.value === '') {
            error[err_box_dict.birth].style.display = "block";
            error[err_box_dict.birth].innerHTML = "태어난 일(날짜) 2자리를 정확하게 입력하세요.";
            return false
        } else {
            error[err_box_dict.birth].style.display = "none";
            return isBirthRight();
        }
    }
}



function isBirthRight() {
    var datePattern = /\d{1,2}/;
    if(!datePattern.test(dd.value) || Number(dd.value)<1 || Number(dd.value)>31) {
        error[err_box_dict.birth].innerHTML = "생년월일을 다시 확인해주세요.";
        return false
    } else {
        return true;
    }
}

function isEmailCorrect() {
    var emailPattern = /[a-z0-9]{2,}@[a-z0-9-]{2,}\.[a-z0-9]{2,}/;

    if(email.value === ""){ 
        error[err_box_dict.email].style.display = "none";
        return false;
    } else if(!emailPattern.test(email.value)) {
        error[err_box_dict.email].style.display = "block";
        return false;
    } else {
        error[err_box_dict.email].style.display = "none";
        return true;
    }

}

function checkPhoneNum() {
    var isPhoneNum = /([01]{2})([01679]{1})-([0-9]{3,4})-([0-9]{4})/;
    
    if(mobile.value === "") {
        error[err_box_dict.phone].innerHTML = "필수 정보입니다.";
        error[err_box_dict.phone].style.display = "block";
        return false;
    } else if(!isPhoneNum.test(mobile.value)) {
        error[err_box_dict.phone].innerHTML = "형식에 맞지 않는 번호입니다.";
        error[err_box_dict.phone].style.display = "block";
        return false;
    } else {
        error[err_box_dict.phone].style.display = "none";
        return true;
    }
    
}



/*
2월 : 윤년에는 29일까지, 평년에는 28일까지.
1,3,5,7, 8,10,12 -> 31일
2,4,6, 9,11 -> 30일
    var days31 = [1, 3, 5, 7, 8, 10, 12];
    var days30 = [4, 6, 9, 11];
    if(mm.value )
var sel = document.getElementById("sel");
var val = sel.options[sel.selectedIndex].value;
var id = document.querySelector('#id');
var pw1 = document.querySelector('#pswd1');
var pw2 = document.querySelector('#pswd2');
var yourName = document.querySelector('#name');
var yy = document.querySelector('#yy');
var mm = document.querySelector('#mm');
var dd = document.querySelector('#dd');
var email = document.querySelector('#email');
var mobile = document.querySelector('#mobile');
var error = document.querySelectorAll('.error_next_box');
var pattern_num = /[0-9]/;
var pattern_spc = /[~!@#$%^&*()_+|<>?:{}]/;
id.onchange = checkId;
pw1.onchange = checkPw;
pw2.onchange = comparePw;
yourName.onchange = checkName;
yy.onchange = checkYear;
function checkId() {
    if(id.value === "") {
        error[0].style.display = "block";
    } else if(id.value.length < 5 || id.value.length > 20){
        error[0].innerHTML = "5~20자의 영문 소문자, 숫자와 특수기호(_),(-)만 사용 가능합니다.";
        error[0].style.display = "block";
    }
}
function checkPw() {
    if(pw1.value === "") {
        error[1].style.display = "block";
    } else if (pw1.value.length < 8 || pw1.value.length > 16) {
        error[1].innerHTML = "8~16자 영문 대 소문자, 숫자, 특수문자를 사용하세요.";
        error[1].style.display = "block";
    }
}
function comparePw() {
    if(pw2.value === "") {
        error[2].style.display = "block";
    } else if (pw2.value !== pw1.value) {
        error[2].innerHTML = "비밀번호가 일치하지 않습니다.";
        error[2].style.display = "block";
    }
}
function checkName() {
    if( yourName.value.indexOf(" ") >= 0 || pattern_spc.test(yourName.value) || pattern_num.test(yourName.value) ) {
        error[3].innerHTML = "한글과 영문 대 소문자를 사용하세요. (특수기호, 공백 사용 불가)";
        error[3].style.display = "block";
    } else if(yourName.value.length === 0) {
        error[3].style.display = "block";
    } else {
        error[3].style.display = "none";
    }
}
function checkYear() {
    isBirthEntered();
    if(yy.value.length !== 4 || !pattern_num.test(yy.value)) {
        error[4].innerHTML = "태어난 년도 4자리를 정확하게 입력하세요.";
    } else if (parseInt(yy.value) < 1920) {
        error[4].innerHTML = "정말이세요?";
        error[4].style.display = "block";
    }
}
function isBirthEntered() {
    
}
function checkEmail() {
    
}
function checkNumber() {
    
}
*/