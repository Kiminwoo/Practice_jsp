<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.Timestamp"%> <!-- 시간사용 import -->
<% request.setCharacterEncoding("UTF-8");%> <!-- 받아올 자료를 캐릭터 셋으로 UTF-8로 지정 -->
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Lab7_1_result</title>
</head>
<body>
<jsp:useBean id="lab7" class="Lab7.Lab7"> <!-- 자바빈 set부분 , orderNumber의 value값을 초기화 시켜 줄 것이기 때문에 *가 아니라 일일이 지정해 주었습니다. -->
	<jsp:setProperty name="lab7" property="name"/>
	<jsp:setProperty name="lab7" property="coffeename"/>
	<jsp:setProperty name="lab7" property="HI"/>
	<jsp:setProperty name="lab7" property="size"/>
	<jsp:setProperty name="lab7" property="date"/>
	<jsp:setProperty name="lab7" property="orderNumber" value="2018_0001"/>
	<jsp:setProperty name="lab7" property="introduce"/>
</jsp:useBean>
<% 
	lab7.setDate(new Timestamp(System.currentTimeMillis())); // 주문시간을 가져오는 것.
%>

<p>
<Strong><h1>주문 결과</h1></Strong> <!-- 주문한 결과값들을 get으로 불러옵니다. -->
</p>
<hr>
주문번호  <jsp:getProperty property="orderNumber" name="lab7"/><br>
이름 : <jsp:getProperty property="name" name="lab7"/><br>
커피 : <jsp:getProperty property="coffeename" name="lab7"/><br>
옵션 : <jsp:getProperty property="HI" name="lab7"/><br> 
사이즈 : <jsp:getProperty property="size" name="lab7"/><br>
주문시간 : <jsp:getProperty property="date" name="lab7"/><br>
학번 : <jsp:getProperty property="introduce" name="lab7"/><br>
</body>
</html>
