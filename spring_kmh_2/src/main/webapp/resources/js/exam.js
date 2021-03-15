/**
 * 
 */


//
var login = 0;


function formCheck() {

	var id = document.forms["login"]["id"].value;
	var pw = document.s["login"]["pw"].value;
	//	alert(pw);
	//	
	console.log('패스워드 길이' + pw.length);

	//아이디가 최소 5자리 이상 입력하면 넘어가게 설정
	if (id.length < 5) {

		document.getElementsByClassName('msg')[0].innerHTML
			= "<font color='red'>아이디가 일치하지 않습니다.</font>";

		return false;
	}

	//	if(document.forms["login"]["id"].value.length < 5) {
	//		document.getElementsByClassName("msg")[0].innerHTML
	//		="<font color='red'> 아이디가 일치하지 않습니다.</font>";
	//		
	//		return false;
	//	}

	else if (pw.length < 5) {

		document.getElementsByClassName('msg')[0].innerHTML
			= "<font color='red'>패스워드 일치하지 않습니다.</font>";

		return false;
	}


	//	return false;
}

function loginCheck() {




	if (login == 1) {
		document.getElementById('login').style.display = 'none';
		document.getElementById('logout').style.display = 'inline';
	}

	else {
		document.getElementById('login').style.display = 'inline';
		document.getElementById('logout').style.display = 'none';
	}

}


function loginbox() {
	//	document.getElementById('pop_Layer').style.display='block';
	document.getElementById('modal').style.display = 'block';
}

function loginbox_out() {
	//	document.getElementById('pop_Layer').style.display='block';
	document.getElementById('modal').style.display = 'none';
}

//function popCheck() {
//	
//	
//	
//	
//	if (login == 1) {
//	 document.getElementById('pop_Layer').style.display = 'none';
//	}
//	
//	else{
//	 document.getElementById('pop_Layer').style.display = 'inline';
//	}
//
//}


//시간이 5시가 넘으면 배경색이 바뀌게 한다.(글자 하얀색으로)
function night_mode() {

	var h = new Date();  //new: 새로운 객체를 생성

	//		alert('현재시간 : ' + h.getHours());	

	if (h.getHours() >= 18) {
		document.body.style.backgroundColor = "#000000";
		document.body.style.textDecorationColor = 'white';

	}

	//	else if(h.getHours() >= 8 && h.getHours() < 16 ) {
	//		document.body.style.backgroundColor = "green";
	//	}
	//	
	else {
		document.body.style.backgroundColor = "#ffffff";
	}



	loginCheck();
}


var myname = "minho";


function swOn(root) {
	alert(root)  // 테스트 용도의 메시지창 띄우기  
	document.getElementById('lightball').src = root+'/img/pic_bulbon.gif';

}

function swOff(root) {
	document.getElementById('lightball').src = root+'/img/pic_bulboff.gif';
}


function caculator(a, b) {
	var a, b, res;

	res = myname + 999;
	//	res = add(a, b, 3);
	document.getElementById('add').innerText = res;


	res = a - b;
	document.getElementById('sub').innerText = res;


	res = a * b;
	document.getElementById('mul').innerText = res;

	res = a / b;
	document.getElementById('div').innerText = res;

	res = a % b;
	document.getElementById('rem').innerText = res;
	alert('res=' + res);
	//	var num1=1, num2=2;
	//	var person = "태조";
	//	c = a + person;  //+:숫자와 문자와의 결합으로 본다., -: NaN -> 계산오류
	//	c = 1;
	//	sum = num1++ + ++num2;  //증가(++), 감소(--)연산자 
	//	다음은 변수만 호출 가능하다.
	//	sub = num1 - 1;
	//	alert('sum =' + sum + ', sub = '+ sub);	
}

//두 번째 방법
function add(n1, n2) {  // 함수 안에서만 사용하는 변수: 로컬 변수(local varible)
	return n1 + n2 + 1;  //return은 다시 add값으로 그대로 결과값을 보내준다.

}
//function sub(a, b) {
//	return a - b;
//	
//	}
//function mul(a, b) {
//	return a * b;
//	
//	}
//function div(a, b) {
//	return a / b;
//	
//	}
//function rem(a, b) {
//	return a % b;
//	
//	}