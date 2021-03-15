/**
 * 
 */
//

var login = 0;

function formCheck(){
	var pw = document.forms["login"]["pw"].value;
	alert(pw);
	return false;
}


function loginCheck(){
	if(login == 1){
		document.getElementById("login").style.display = 'none';
		document.getElementById("logOut").style.display = 'inline';
	} else {
		document.getElementById("login").style.display = 'inline';
		document.getElementById("logOut").style.display = 'none';
	}
}

//시간이 5시 넘으면 배경색 검정색(야간모드)
function night_mode() {		
	
	var h = new Date();
	
	//alert('현재시간 :' + h.getHours());
	
	if(h.getHours() >= 18 ){
		document.body.style.backgroundColor = 'black';
	} 
	
	if(h.getHours() >= 8 && h.getHours() < 16) {
		document.body.style.backgroundColor = 'white';
	}
		
	loginCheck();	
}


var myname = "JoyKim";



function swOn(){
  document.getElementById('lightball').src='../img/pic_bulbon.gif';  
}
  
function swOff(){
  document.getElementById('lightball').src='../img/pic_bulboff.gif';  
}

function caculator(a, b){
	var a, b, res;
	
//	res = add(a, b, 3);
	res = myname + 9999;		
	document.getElementById('add').innerText = res;
	
	res = sub(a, b);			
	document.getElementById('sub').innerText = res;
	
	res = mul(a, b);
	document.getElementById('mul').innerText = res;
	
	res = a / b;
	document.getElementById('div').innerText = res;
	
	res = a % b;
	document.getElementById('rem').innerText = res;
	alert('res = ' + res);	
}

function add(n1, n2){	
	var div = (n1 + n2 ) / 2;
	return div;
}

function sub(a, b){
	return a - b;
}

function mul(a, b){
	return a * b;
}

