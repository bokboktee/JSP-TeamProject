<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.accordion p a {padding:15px 30px 10px 20px;  line-height:26px; color:red;display:block;position:relative;outline:0;text-decoration:none;background-position:30px center;box-sizing:border-box;}
.reply {
padding:5px 20px 25px 20px; 
line-height:20px;
 position:relative;
 height:auto;
 display:none;
 background-position:30px 8px;
 line-height:20px;color:blue;
 }
</style>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script>


$(document).ready(function() {    
var accordion_tab = $('.accordion button'), accordion_content = $('.reply');
	//accordion p tag click
	accordion_tab.on('click', function(e){
		//tab link 비활성화
		e.preventDefault();
		//활성화 된 class 제거
		accordion_tab.removeClass('active');
		//accordion div 내용 숨기기
		accordion_content.slideUp('normal');
		//tab이 숨겨져 있으면 활성화 시키고 div 내용 펼치기
		if($(this).next().is(':hidden') == true) {
			$(this).addClass('active');
			$(this).next().slideDown('normal');
		 } 			  
 });
});
</script>
</head>
<body>
 <div class="accordion_wrap" style="border:1px solid; width:100%;">
	<div class="accordion">                        	
		<section id="one">
			<button id="showReply"
		style="cursor: pointer; border: 2px solid #6667ab9c; width: 110px; margin-left: 20%; margin-top: 20px; padding: 5px;">
		<img style="width: 20px;" src="img/replyicon.png"> 댓글 (5) ▼
	</button>
	
			<div class="reply">
		<div id="replyDetail">
			<div
		
				style="font-size: 15px; float: left; margin-bottom: 10px; font-weight: bold;">[작성자
				: dlwjddk1010]</div>
			<div id="replyContent">
				<div style="font-size: 15px;" id="replyContent">어머 너무 귀엽다...</div>
			</div>
			<ul style="font-size: 13px;" id="replyInfo">
				<li><i class="fa fa-calendar-o"></i> 2022/12/31</li>
			</ul>
		</div>
		<!-- 		<hr style="width: 95%">
 -->
		<div id="rereplyDetail">
			<img style="width: 20px;" src="img/rereply.png">
			<div style="margin-left: 10px;">
				<div
					style="font-size: 15px; float: left; margin-bottom: 10px; font-weight: bold;">[작성자
					: hyerin00]</div>
				<div id="replyContent">
					<div style="font-size: 15px;" id="replyContent">very
						cuuuuuute</div>
				</div>
				<ul style="font-size: 13px;" id="replyInfo">
					<li><i class="fa fa-calendar-o"></i> 2023/01/01</li>
				</ul>
			</div>
		</div>
		<div id="rereplyDetail">
			<img style="width: 20px;" src="img/rereply.png">
			<div style="margin-left: 10px;">
				<div
					style="font-size: 15px; float: left; margin-bottom: 10px; font-weight: bold;">[작성자
					: moonyong]</div>
				<div id="replyContent">
					<div style="font-size: 15px;" id="replyContent">왕 귀엽네여</div>
				</div>
				<ul style="font-size: 13px;" id="replyInfo">
					<li><i class="fa fa-calendar-o"></i> 2022/01/02</li>
				</ul>
			</div>
		</div>
		<div id="replyDetail">
			<div
				style="font-size: 15px; float: left; margin-bottom: 10px; font-weight: bold;">[작성자
				: joonyoung]</div>
			<div id="replyContent">
				<div style="font-size: 15px;" id="replyContent">저희 고양이가 더
					귀여운디요</div>
			</div>
			<ul style="font-size: 13px;" id="replyInfo">
				<li><i class="fa fa-calendar-o"></i> 2022/01/03</li>
			</ul>
		</div>
		<div id="rereplyDetail">
			<img style="width: 20px;" src="img/rereply.png">
			<div style="margin-left: 10px;">
				<div
					style="font-size: 15px; float: left; margin-bottom: 10px; font-weight: bold;">[작성자
					: moonyong]</div>
				<div id="replyContent">
					<div style="font-size: 15px;" id="replyContent">왕 귀엽네여</div>
				</div>
				<ul style="font-size: 13px;" id="replyInfo">
					<li><i class="fa fa-calendar-o"></i> 2022/01/02</li>
				</ul>
			</div>
		</div>
	</div>
	
		</section>			
		                        
	</div>
</div>

</script>

</body>
</html>