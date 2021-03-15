/**
 * 회원가입 폼체크
 * 작성일 : 2020.11.26
 * 작성자 : 김정은 
 */
function loginFormCheck(){
	if(document.forms["login"]["pw"].value.length < 5){
		document.getElementById("msg").innerHTML = "비밀번호를 확인하세요.";
		document.forms["login"]["pw"].focus();
		return false;
	}
}

function memberFormCheck(){
	//아이디가 중복된 경우 체크
	if(document.querySelector("#isIdCheck").value == 1){
		//document.querySelector("#id_input").focus();
		document.forms["memReg"]["id"].focus();
		return false;
	}
	
		
	//비밀번호 체크
	if(document.forms["memReg"]["pw"].value.length < 5){
		document.getElementById("pw_error").innerText =
		"** 패스워드 길이를 확인하세요.";
		return false;
	}
	
	//이메일 체크
	if(document.forms["memReg"]["domain"].value.length != 0
		&& document.forms["memReg"]["eid"].value == "" 
	){
		document.getElementById("eid_error").innerText =
		"** 이메일 ID를 입력하세요";
		return false;	
	}
	
	//성별체크
	if(document.forms["memReg"]["gender"].value == ""){
		document.getElementById("gender_error").innerText =
		"** 성별을 체크하세요";
		return false;
	}
	
	//취미체크, 최소1개 선택
	var hobby_length = document.forms["memReg"]["hobby"].length;
	console.log("취미갯수:" + hobby_length);
	var cnt = 0;
	for(i=0; i < hobby_length; i++)
	{
		//console.log("변수 i 값 : " + i);
		if(document.forms["memReg"]["hobby"][i].checked)
		{
			cnt++;
			break;
		}	
		
	}
	
	if (cnt==0)	{
		document.getElementById("hobby_error").innerText =
		"** 취미를 체크하세요";	
		return false;
	}	
	
}

function inputDomain(){
	
	var sel = document.forms["memReg"]["sel_domain"].value;
	
	document.forms["memReg"]["domain"].value = sel;
	
	if(sel != "") {
		document.forms["memReg"]["domain"].readOnly = true;
	} else {
		document.forms["memReg"]["domain"].readOnly = false;
	}
}

function idCheck(){
	var id = document.forms["memReg"]["id"].value;
	
	if(id.length == 0){
		alert('아이디를 입력하세요');		
		return;
	}
	
	var x = new XMLHttpRequest();
	
	x.onreadystatechange = function() {
		
		if(x.readyState === 4) {
			
			if(x.status === 200){
				
				var msg = document.getElementById("idCheckMsg");
				
				document.getElementById("isIdCheck").value = x.responseText.trim(); 
				
				if(x.responseText.trim()  ===  "0"){
					msg.innerText = "사용가능한 아이디 입니다.";
				} else {
					msg.innerText = "중복된 아이디 입니다.";
				}
				
			} else {				
				console.log('에러코드 : ' + x.status);
			}
			
		}
	};
	
	x.open("POST", "/member/idDoubleCheck", true);
	x.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
	x.send("idstr=" + id);	
}



