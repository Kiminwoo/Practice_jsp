<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Lab7_1</title>
</head>

<style type="text/css">
	.introduce
	{
	color: #000000;
	text-decoration: none;
	}
</style>



<script>
	function All_Ck() // 빈 값이 있는지에 대한 function 
	{
		var theform = document.form1; // form1의 form을 가져와서 theform에 저장시킴
		
		if(theform.name.value=="") // form1의 name의 이름을 가진 값의 공백여부 체크 
		{
			alert("이름을 입력해 주세요"); // 확인창이벤트 
			return theform.name.focus(); // return으로 name에 포커스 맞춰줌
		}
		
		if(theform.pwd.value==""){   //form1의 pwd의 이름을 가진 값의 공백여부 체크 
			alert("비밀번호를 입력해 주세요"); //확인 이벤트
			return theform.pwd.focus(); // return으로 theform 내에서의 pwd에 포커스 맟춤
		}
		
		var radio_ck = document.all.coffeename.length; // radio_ck에 coffeename이라는 이름을 가진 radion 버튼의 값들을 모두 가져와서 그 값들의 길이를 저장시킴 , 결국 raio_ck에는 coffeename의 수만큼 들어감
		var ck=0;
		for(var i = 0 ; i < radio_ck; i++) //radio 전체 버튼을 일일이 확인시킴
		{
			if(document.all.coffeename[i].checked == true) // 만약 버튼 중 하나라도 체크 되어진 것이 있다면 
			{
				ck++;
				break; // 끝
			}
			
		}
		if(ck <=0) // 위 if문에 들어가서 ck++를 하게 된다면 여기에 못들어 오지만 값이 하나라도 없게 된다면 이 if문에 들어가게됨
		{
			alert("커피 종류를 선택해 주세요"); // 확인이벤트
			return theform.coffeename[0].focus(); // return값으로 버튼 첫 번째에 focus를 맞춤
		}
		
		var HI_ck =document.all.HI.length; // 위와 똑같이 버튼의 길이를 가져옴
		var HI_num = 0; // 이것 또한 ck와 동일한 기능
		for(var j = 0 ; j < HI_ck ; j++) // 버튼 수 만큼 돌려준다
		{
			if(document.all.HI[j].checked == true) // 만약 모든 버튼중에 하나라도 체크가 되어있다며
			{
				HI_num ++;
				break; // 끝
			}
		}
		if(HI_num<=0) // 버튼이 하나라도 체크 되어 있지 않다면
		{
			alert("옵션을 선택해 주세요"); // 확인 이벤트
			return theform.HI[0].focus(); // 옵션 첫 번째 버튼에 포커스
		}
		
		if(theform.size.value == "0") // select문 에서 selected값으로 0을 주었는데 이 0은 선택하세요 부분이고 , 초기 화면입니다. 이 값이 0이면 선택되어 지지 않은 것입니다.
		{
			alert("사이즈를선택해 주세요."); // 확인이벤트
			return theform.size.focus();  // return 값으로 form에 select 박스 "선택하세요"에 포커스를 맞춥니다
		}
		
		theform.submit(); // 모든 조건들이 완벽했을 때 submit
	}
	
	function Del_ACtion() // 확인 이벤트 
	{
		var CK = confirm("취소하시겠습니까?"); // 확인 이벤트의 결과값을 저장 시켜줄 CK
		
		if(CK == true) //확인을 눌렀을 경우 
		{
			document.form1.reset(); // form은 리셋된다.
		}
		
		if(CK == false) // 취소를 눌렀을 경우 
		{
			return false //return 값으로 false를 반환해 준다.
		}
		
	}


</script>
<body>
<form name="form1" id="form1" action="Lab7_1_result.jsp" method="post"> <!-- action으로 result로 보내고 post로 -->
<div>
<p>
<Strong><h1>커피 주문하기</h1></Strong>
</p>
이름 : <input type="text" name="name" id="name"><br>
비밀번호 : <input type="password" name="pwd" id="pwd"><br> <!-- 비번이기 때문에 -->
<hr>
</div>

<div>
	커피 종류<br> <!-- 커피 종류 radio , id 와 name값은 자바빈 클래스에서 선언해준 coffeename과 동일하게 맞춰줍니다. -->
	<input type="radio" name="coffeename" id = "coffeename" value="아메리카노">
	아메리카노
	<input type="radio" name="coffeename" id = "coffeename" value="카페라떼">
	카페라떼
	<input type="radio" name="coffeename" id = "coffeename" value="카페모카">
	카페모카<br>
</div>

<div>
	옵션<br> <!-- 옵션을 나타내는 radio 이고 여기 또한 name과 id값은 동일한 HI로 맟춰줌 그 이유는 자바빈 클래스에서 그렇게 설정해 주었기 때문 -->
	<input type="radio" name="HI" id="HI" value="hot">
	hot
	<input type="radio" name="HI" id="HI" value="ice">
	ice<br>
</div>

<div>
	사이즈<br> <!-- 사이즈를 선택할수 있는 select문 -->
	<select name="size"> <!-- 여기 또한 자바빈 클래스에서 선언해주는 똑같은 값 size로 맟춰준다. -->
		<option value="0" selected="selected">선택해주세요</option> <!-- 초기 조건 value = 0으로 해주고  -->
		<option value="Tall">Tall</option>
		<option value="Grande">Grande</option>
		<option value="Venti">Venti</option>
		<option value="Trenta">Trenta</option>
	</select>
</div>

<br>

<div class="introduce"> <!-- 학번과 이름을 나타내 주었는데 , 이 값들은 자바빈 클래스에서 introduce로 선언해 준 상태이고 result로 보내줄 것입니다 . 또한 set과 get으로 나타내 줄 것임. -->
	<textarea placeholder="201303017_김인우" width="300px" height="500px" name="introduce" id="introduce"></textarea>
</div>

<br>
</form>
<input type="button" value="주문하기" onclick="All_Ck()"> <!-- 클릭시 All_Ck 메소드 실행 -->
<input type="button" value="취소하기" onclick="Del_ACtion()" > <!-- 클릭시 Del_ACtion 메소드 실행 -->


</body>
</html>
