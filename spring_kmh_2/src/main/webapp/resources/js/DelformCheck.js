/**
 * 
 */


function fileDel(root_path) {
	
//	var id = document.forms["memReg"]["id"].value;
//	
//	if(id.length ==0) {
	alert('함수 호출됨');
//	return false;
//	
//	return;
//	}
	
	var sno = new XMLHttpRequest();
	var x = new XMLHttpRequest();
	
	x.onreadystatechange = function(){
		
		if(x.readyState === 4) {
			
			if(x.status === 200) {
				
				var tag = document.getElementById("fileInput");
				
				if(x.responseText.trim() === "0"){
					alert("파일 삭제 실패");
//					trim : 보이지 않는 공백을 지워준다.
//			x.responseText.trim() : DB에서 받아온 값
				} else {
					alert("파일 삭제 완료");
					tag.innerText = "<input type='file' name = 'filename1'>";
				}
				
			} else {
				
				console.log('에러코드 발생' + x.status);
			}
			
		}
	};
//					<GET   과   POST의   차이점>
//	url노출 여부:		o		    x
//	데이터의 위치:	   header		body	(중요)
//	전송 길이 제한:		o			x
//	캐싱 가능 여부:		o			x

	x.open("POST", root + "/member/idCheck.jsp?", true);
	x.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
	x.send("id=" +id);
}
