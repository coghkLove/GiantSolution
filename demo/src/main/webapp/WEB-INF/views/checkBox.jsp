<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<div>

	<div id = "chkDiv">
		<input type = "checkbox" name = "all" id = "all" ><label for="all">전체</label>
		<input type = "button" name = "btn" id = "btn" value = "버튼">
	</div>
	<div id = "checkBox">
		<input type = "checkbox" name = "chk" id = "chk1" value = "체크1"  class = "aa" >체크1
		<input type = "checkbox" name = "chk" id = "chk2" value = "체크2">체크2
		<input type = "checkbox" name = "chk" id = "chk3" value = "체크3">체크3
		<input type = "checkbox" name = "chk" id = "chk4" value = "체크4">체크4
		<input type = "checkbox" name = "chk" id = "chk5" value = "체크5">체크5
		<input type = "checkbox" name = "chk" id = "chk6" value = "체크6">체크6
		<input type = "checkbox" name = "chk" id = "chk7" value = "체크7">체크7
		<input type = "checkbox" name = "chk" id = "chk8" value = "체크8">체크8
		<input type = "checkbox" name = "chk" id = "chk9" value = "체크9">체크9
	</div>
	<div id = "txtDv"></div>
	</div>
	
	
	<script>
		document.getElementById('btn').addEventListener('click', function() {
		    var query = 'input[name="chk"]:checked';
		  //input의 name이 chk인 것들중에 내가 체크(선택한것)
		    var select = document.querySelectorAll(query);
		  //document.querySelectorAll는 주어진 CSS 선택자에 
		  //일치하는 문서의 모든 요소를 NodeList 객체로 반환하는 메소드
		
		    var result = '';
		    select.forEach((selectList) => {
		        result += selectList.value + ', ';
		    });
		  //의에 var select라는 이름의 리스트(배열)에 있는 각각의 요소를
		  //하나씩 꺼내서 중괄호 { ... } 안에 있는 코드를 실행 
		
		    document.getElementById('txtDv').innerText = result;
		  //'txtDv'라는 id를 가진 HTML 요소의 텍스트를 체크박스에서 선택한 값으로 설정 
		  //즉, 체크박스에서 선택한 값을 웹 페이지에 출력하는 역할
		});
	</script>

	

</body>
</html>