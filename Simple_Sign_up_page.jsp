<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<!-- style 부분  -->
<style type="text/css">

body {
	font: 15px gulim, " 굴림 ", sans-serif;
}

fieldset {
	border: none 0;
}

legend {
	position: absolute;
	left: -9999px;
}

#container {
	width: 520px;
	border: 1px solid black;
	padding: 20px 40px;
	margin: 0 auto
}

p {
	font-size: 12px;
	color: black
}

span {
	font-size: 12px;
	color: black
}

</style>

<script type="text/javascript">
	
	function submit_All_Chk(check) /*submit 클릭 했을 때의 이벤트 */
	{
		/* check 안에 있는 속성의 값을 받아 와서 number_의 변수에 저장 */
		var number_id = check.user_id.value ; 
		var number_password = check.pwd1.value;
		var number_password2 = check.pwd2.value;
		var number_name = check.name.value;
		var number_gender = check.gender.value;
		
		if(number_id == "") /* 받아온 id 의 값이 공백일 경우  */
		{
			alert("ID의 입력값이 빈값입니다");
			alert("다시 확인 부탁드립니다!");
			number_id.focus(); /* 다시 id에 포커스 맞춥니다. */
			
			return false;
		}
		else if (number_password =="") /* 받아온 password의 값이 공백일 경우  */
		{
			alert("password의 입력값이 빈값입니다.");
			alert("다시 확인 부탁드립니다!");
			number_password.focus(); /* password 에 포커스 맞춤 */
		}
		else if (number_password2 =="") /* 재입력 비밀번호 의 값이 공백일 경우  */
		{
			alert("password2의 입력값이 빈값입니다.");
			alert("다시 확인 부탁드립니다!");
			number_password2.focus(); /* password2의 값에 포커스 맞춤 */
		}
		
		else if (number_password != number_password2) /* password의 값과 password2의 값이 불일치 */
		{
			alert("비밀번호가 일치 하지 않습니다");
			alert("다시 확인 부탁드립니다!");
			number_password.value =null; /*  입력한 password의 값을 공백으로 초기화*/
			number_password2.value =null; /* 입력한 password2의 값을 공백으로 초기화 */
			number_password.focus(); /* password의 값의 포커스 맟춤  */
			return false;
		}
		else if (number_name == "") /* 이름 입력값이 공백일 경우  */
		{
			alert("이름의 입력값이 빈값입니다");
			alert("다시 확인 부탁드립니다!");
			number_name.focus(); /* 이름 입력값에 포커스를 맞춤*/
			return false;
		}
		else if (number_gender == "") /*  성별 클릭 칸이 공백일 경우 */
		{
			alert("성별이 체크되어 있지않습니다");
			alert("다시 확인 부탁드립니다!");
			number_gender.focus(); /*  성별 클릭 칸의 포커스를 맞춤*/
			return false;
		}
		else
		{
			confirm("회원가입을 하시겠습니까?"); /* 모든 입력이 완료되었을 시 회원가입 confirm 출력 */
			
		}
		
		
	}
	
	function recheck(check) /* 회원가입을 취소 실행 */
	{
		
		var result = confirm("회원가입을 취소하시겠습니까?"); /* confirm 의 이벤트를 result 변수로 받아줌 */
		
		if (result== true) /* 확인 버튼을 눌렀을 경우 */
		{
			alert("취소되었습니다");  
			onload = "document.check.user_id.focus();" /* user_id의 값에 포커스를 맟춤 */
			return true;
		}
		else if (result == false)
		{
			 return false; /* false 일 경우 false 출력 */
		}

	}
	
	function inputReset(id) /* 부분 칸의 초기화 버튼 이벤트 */
	{
		var input = document.getElementById(id); /* id라는 주소값을 받아온 뒤 input에 저장 */
		input.value = null; /*  받아온 id의 주소값을 null로 초기화*/
		input.focus; /* 받아온 id의 주소값에 다시 포커스 */
	}
	function AllReset(random_form) /* 폼 초기화 실행 */
	{
		document.getElementById(random_form).reset(); /* 폼을 받아온뒤 그 폼 전체를 초기화 */

	}
	function checkFilled(obj)  /* 어떤 입력값에 따른 실행 */
	{
		var txt = document.getElementById("id_chk"); /*id의 값을 받아와 text에 저장 */ 
		txt.innerHTML = "";  /* text의  값을 ""로 바꾼다 */
		if(obj.value == "")  /*그 속성의 값이 ""라면  조건*/
		{ 
			txt.innerHTML="*이름을 입력해주세요"; /* ""로 바꿔준 값을 *이름을 입력해주세요 라고 저장시킴 */
			obj.focus(); // obj에 다시 포커스 
			} 
		else{ 
			txt.innerHTML = ""; 
			} 
	}
	

	
	</script>
<body onload="document.getElementById('user_id').focus();"> <!-- 밑에 코드를 실행한 뒤 user_id에 포커스를 맞춘다 -->
	<div id="container">
		<h1>회원가입</h1>
		<p style="color: red; font-size: 11px">모든 항목을 모두 채워주세요 .</p>
		<hr>
		<form name="form1" id="form1"> <!-- form1 -->
			<p>아이디</p>
			<input type="text" id="user_id" onblur="checkFilled(this)"> <!-- onblur 은 이벤트 --> 
			<span id="id_chk" style="color: red; font-size: 10px"></span>
			<p>비밀번호</p>
			<input type="password" id="pwd1" placeholder=" 비밀번호 "> 
			<p>비밀번호 재확인</p>
			<input type="password" id="pwd2" placeholder=" 비밀번호 재확인 ">
			<p>이름</p>
			<input type="text" placeholder=" 이름 " id="name">
			<p>성별</p>
			<input type="radio" name="gender" id="gender" value="M"> <span>남자</span>
			<input type="radio" name="gender" id="gender" value="F"> <span>여자</span>
			<p>
			<input type="button" value=" 제출 "onclick="submit_All_Chk(this.form)"> <!--submit 이벤트 --> 
			<input type="reset" value=" 다시쓰기 " onclick="recheck(this.form)"> <!-- reset 이벤트 -->
			
			<h5>부분별로 reset 해보기</h5> <!-- 추가작업 -->
			<p>
				<input type="button" onclick="inputReset('user_id')" value="ID reset"> 
				<input type="button" onclick="inputReset('pwd1')" value="password reset"> 
				<input type="button" onclick="inputReset('pwd2')" value="password reset2">
				<input type="button" onclick="inputReset('name')" value="name reset">
				<input type="button" onclick="AllReset('form1')" value="All Menu reset">
			<p>
			<hr>
      
		</form>
	</div>


</body>
</html>
