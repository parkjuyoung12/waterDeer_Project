/**
 * 
 */
initCreateTimeTable();
var timetable = {
		checked: {
			MON: Array.from({length: 10}, () => false)
			, TUE: Array.from({length: 10}, () => false)
			, WED: Array.from({length: 10}, () => false)
			, THU: Array.from({length: 10}, () => false)
			, FRI: Array.from({length: 10}, () => false)
			, SAT: Array.from({length: 10}, () => false)
			, SUN: Array.from({length: 10}, () => false)
		}
		, td: {
			base_color: '#DDDDDD'
			, checked_color: '#20aee3'
		}
		, getCount: function() {
			let cnt=0
			for( yoil in this.checked ) { 
				this.checked[yoil].forEach(function(element){
					cnt+= element;
				})
			}// for( yoil in this.checked )
			return cnt
		}
		, getCheckedContent: function() {
			let subj_name = new Array(3) // FIXME 3학점으로 고정하였음.
			let i = 0;
			for( yoil in this.checked ) { 
				this.checked[yoil].forEach(function(element, index){
					console.log( element )
					if( element ) {
						console.log(yoil+index)
						subj_name[i] = yoil+'-'+index;
						i++;
					}
				})
			}
			return subj_name;
		}
}
var subj_code_val = '';
var subj_stud_num_val = 0;
var room_code_val = 'ROOM-1'; // FIXME 룸1로 시작하게 상수 리터럴로 해두었음

$(function() {
	init();
});

// ━━━━━━━━━━━━━━━━━━━━ USER FUNCTION ━━━━━━━━━━━━━━━━━━━━- 
// INIT FUNC
function init() {
	initClickEvent();
}

function initCreateTimeTable() {
	let obj = document.querySelector('#time_table>tbody');
	let str = '';
	for(let i=1; i<=3; i++) {
		str += '<tr>'
		str += '<th>' +i+'</th>'
		str += '<td><input value="MON-'+i+'" type="hidden"></td>'
		str += '<td><input value="TUE-'+i+'" type="hidden"></td>'
		str += '<td><input value="WED-'+i+'" type="hidden"></td>'
		str += '<td><input value="THU-'+i+'" type="hidden"></td>'
		str += '<td><input value="FRI-'+i+'" type="hidden"></td>'
		str += '<td><input value="SAT-'+i+'" type="hidden"></td>'
		str += '<td><input value="SUN-'+i+'" type="hidden"></td>'
		str += '</tr>'
	}
	obj.innerHTML = str;
}// initCreateTimeTable()

function initClickEvent() {
	$("#modal_opener").click(function() { 
		$(".modal").fadeIn();
	});
	
	$("#subj_name, #subj_code").click( function(evt){
		if(this.value == '') {	// 비어있을 때 onClick
			$("#modal_opener").trigger('click')	// #search_subj를 클릭한 것과 같이 취급
		}
	})
	
	$('#choose').click(function() {
		let isCheckedSubj = false
		$('.radio-btn-subj').each(function( ){
			isCheckedSubj |= $(this).is(':checked')

			if(isCheckedSubj) {
				subj_code_val = $(this).val()
				console.log('SEL SUBJ: ' + subj_code_val )
				return false
			}

		})
		
		if( !isCheckedSubj ) {
			alert('과목을 선택해 주십시오.')
		} else {
			$('#modal_closer').trigger('click');
		}
		
	})
	
	$('#modal_closer').click( function(){
		console.log('Modal Closed');
		$(".modal").fadeOut();
	})
	
	// 시간표에서 th가 아닌 td에만 적용
	$('#time_table td').click( function(evt) {
		let val = $(this).children('input:eq(0)').val()
		let token = val.split('-');
		let yoil = token[0];
		let gyosi = token[1];
		
		timetable.checked[ yoil ][ gyosi ] ^= true;
		if( timetable.checked[ yoil ][ gyosi ] ) {
			if(timetable.getCount() > 3 ) // FIXME 3 학점짜리 과목 기준으로 일단 작성해두었음.
			{
				timetable.checked[ yoil ][ gyosi ] = false;
				return;
			}
			this.setAttribute("style", "background-color:"+timetable.td.checked_color+";")
		} else {
			this.setAttribute("style", "background-color:"+timetable.td.base_color+";")
		}
	})
	
	$('#room_code').change(function() {
		room_code_val = $(this).val();
		console.log('SELECTED ROOM CODE: '+room_code_val)
	})
	
	/** SUBMIT BTN:
	*		필요 정보
	*		과목 코드(radio button)
	*		학과
	*		과목
	*		강의실 코드(input[type='text'])
	*		교수 명
	* 		시간표(table에서 읽어서 담기) - 하나의 문자열에 구분자랑 붙여 버리기
	*		강의실 인원
	*/
	$('#commitLectureBtn').click(function() {
		let subj_code_val;
		let timetable_dto_val = ''
		let form = document.createElement('form');
		form.setAttribute('action', '')
		form.setAttribute('method', 'post')
		
		$('.radio-btn-subj').each(function(){
			if( $(this).is(':checked') ) {
				subj_code_val = $(this).val()
			}
		})
		
		timetable.getCheckedContent().forEach(function(item) {
				timetable_dto_val += '/' + item;
		})
		
		let subj_code = document.createElement('input')
		subj_code.setAttribute('type', 'hidden')
		subj_code.setAttribute('name', 'subj_code')
		subj_code.setAttribute('value', subj_code_val)
		form.appendChild( subj_code )
		let timetable_dto = document.createElement('input')
		timetable_dto.setAttribute('type', 'hidden')
		timetable_dto.setAttribute('name', 'timetable')
		timetable_dto.setAttribute('value', timetable_dto_val)
		form.appendChild( timetable_dto )
		form.appendChild( document.querySelector('#room_code') )
		form.appendChild( document.querySelector('#room_stud_size') )
		
		document.appendChild(form)
		form.submit();
	})
	
}// initClickEvent()
