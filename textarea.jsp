<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" session="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href='<c:url value="/resources/css/textarea.css"/>'>
<script src="https://cdn.jsdelivr.net/npm/clipboard@2.0.8/dist/clipboard.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<meta charset="UTF-8">
<title>텍스트 실시간 감지, 복사버튼</title>
</head>
<body>
	<div id="wrapper">
		<section id="inputHere">
			<div>여기에 입력하면</div>
			<textarea id="changeText" placeholder="입력해보세요."></textarea>
		</section>
		
		<section>
			<div>(1)</div>
			<textarea class="changeThis">1번</textarea>
		</section>
	</div>
	<p class="toast_box copy_quick_notice">
		<span class="toast_tx">
			<span>복사되었습니다.</span>
		</span>
	</p>
	<button id="copy" data-clipboard-text="" >복사하기</button>
</body>
<script type="text/javascript">
	new ClipboardJS('#copy');
	
	$('#copy').on('click', function() {
		$('.toast_box').fadeIn(400).delay(1000).fadeOut(400);
	})
		
	$('#changeText').on('propertychange change keyup paste input', function() {
		var newText = $('#changeText').val();
		$('#copy').attr('data-clipboard-text', newText);
		$('.changeThis').text(newText);
	});
</script>
</html>