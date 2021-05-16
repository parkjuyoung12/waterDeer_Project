$(document).ready(function(){ // 이 함수 자체가 '제이쿼리를 사용할 준비가 된 후 실행할 내용'이라는 뜻임.
	initLoginFormJs();
});

function initLoginFormJs() {
	importedJS();
	addValiRules();
}

function importedJS() {
	$(".login-form").validate({
		  rules: {
		    username: {
		      required: true 		/* 필수 입력 사항(true) */
		      , minlength: 4		/* 최소 입력 길이 */
		      , englishLetters: true
		    },            
		    password: {
		      required: true
		      , minlength: 5
		      , passwordRule: true	/* 영문, 숫자, 특수문자만 허용. 그 중 두 가지 이상. */
		    }
		  },
		  //For custom messages
		  messages: {
		    username:{
		      required: "Enter a username",
		      minlength: "Enter at least 4 characters" 
		    }
		  },
		  errorElement : 'div',
		  errorPlacement: function(error, element) {
		    var placement = $(element).data('error'); 
		    if (placement) {
		      $(placement).append(error)
		    } else {
		      error.insertAfter(element);
		    }
		  }
		});
}

function addValiRules() {
	$.validator.addMethod("englishLetters", function(value, element){
			return this.optional(element) || value.test(/^[a-zA-Z0-9\.\,\s]+( [a-zA-Z0-9\.\,\s]+)*$/);
	}, "영어로 입력 해주세요.");
	
	$.validator.addMethod("passwordRule", function(value, element){
		let cnt = (/[A-Z|a-z]/).test(value)
				+ (/[0-9]/).test(value)
				+ (/[#?!@$%^&*-]/).test(value);
		return this.optional(element)
				|| (value.test(/[A-Z|a-z|0-9|#?!@$%^&*-]/) 	// 영문, 숫자, 특수문자 허용
				&& !value.test(/[^A-Z|a-z|0-9|#?!@$%^&*-]/)	// 그 외에 허용하지 않음
				&& cnt >= 2)
	}, '비밀번호는 영문, 숫자, 특수문자 중 두 가지 이상의 조합으로만 사용할 수 있습니다.');

	$.validator.addMethod("koreanLetters", function(value, element){
		return this.optional(element) || value.test("/^[가-힣]+$/");
	}, "한글로 입력 해주세요.");

	$.validator.addMethod("phoneNumbers", function(phone_number, element) {
		phone_number = phone_number.replace(/\s+/g, "");
		return this.optional(element) || phone_number.test(/^\d{3}-\d{3,4}-\d{4}$/);
	}, '잘못된 휴대폰 번호입니다. 숫자, – 를 포함한 숫자만 입력하세요.');
	
	
	
}