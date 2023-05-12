<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style type="text/css">

.container{
  width:100%;
}
.modal-btn-box{
  width:100%;
  text-align:center;
}
.modal-btn-box button{
  display:inline-block;
  width:150px;
  height:50px;
  background-color:#ffffff;
  border:1px solid #e1e1e1;
  cursor:pointer;
  padding-top:8px;
}
.popup-wrap{
  background-color:rgba(0,0,0,.3);
  justify-content:center;
  align-items:center;
  position:fixed;
  top:0;
  left:0;
  right:0;
  bottom:0;
  display:none;
  padding:15px;
}
.popup{
  width:100%;
  max-width:400px;
  background-color:#ffffff;
  border-radius:10px;
  overflow:hidden;
  background-color:#264db5;
  box-shadow: 5px 10px 10px 1px rgba(0,0,0,.3);
}
.popup-head{
  width:100%;
  height:50px;
  display:flex;
  align-items:center;
  justify-content:center;
  background-color: #6667AB;
}
.head-title {
    font-size: 25px;
    font-weight: 700;
    text-align: center;
    color:#FFFFFF;
}
.popup-body{
  width:100%;
  background-color:#ffffff;
}
.body-content{
  width:100%;
  padding:30px;
}
.body-titlebox{
  text-align:justify;
  width:100%;
  height:40px;
  margin-bottom:10px;
  margin-left: 17px;
}
.body-contentbox{
  word-break:break-word;
  overflow-y:auto;
  min-height:100px;
  max-height:200px;
}
.popup-foot{
  width:100%;
  height:50px;
  background-color: #6667AB;
}
.pop-btn{
  display:inline-flex;
  width:50%;
  height:100%;
  float:left;
  justify-content:center;
  align-items:center;
  color:#ffffff;
  cursor:pointer;
}
.pop-btn2{
 display:inline-flex;
  width:50%;
  height:100%;
  float:left;
  justify-content:center;
  align-items:center;
  color:#ffffff;
  cursor:pointer;
  border:none;
  background: none;
  font-size: 17px;

}
.pop-btn.confirm{
  border-right:1px solid #FFFFFF;
}
.report-box{
padding:15px;
}
.report-box2{
margin: 6px;
}
.report-text{
width: 300px;
height: 40px;
}

</style>
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script>
	
	$(function(){
		  $("#confirm").click(function(){
		      modalClose();
		      //컨펌 이벤트 처리
		  });
		  $("#modal-open").click(function(){        $("#popup").css('display','flex').hide().fadeIn();
		  });
		  $("#close").click(function(){
		      modalClose();
		  });
		  $("#close2").click(function(){
		      modalClose();
		  });
		  function modalClose(){
		    $("#popup").fadeOut();
		  }
		});
	
	$(document).ready(function(){
		 
	    // 라디오버튼 클릭시 이벤트 발생
	    $("input:radio[name=radio]").click(function(){
	 
	        if($("input[name=radio]:checked").val() == "1"){
	            $("input:text[name=text]").attr("disabled",false);
	            // radio 버튼의 value 값이 1이라면 활성화
	 
	        }else if($("input[name=radio]:checked").val() == "0"){
	              $("input:text[name=text]").attr("disabled",true);
	            // radio 버튼의 value 값이 0이라면 비활성화
	        }
	    });
	});
</script>

</head>
<body>

<div class="container">
  <div class="modal-btn-box">
  <button type="button" id="modal-open">신고하기</button>  
  </div>
  
  <div class="popup-wrap" id="popup">
    <div class="popup">
      <div class="popup-head">
          <span class="head-title">
            신고하기</span>
      </div>
      <div class="popup-body">
        <div class="body-content">
          <div class="body-titlebox">
            <h2>신고 사유를 선택해주세요.</h2>
          </div>
          <div class="body-contentbox">
            <div style="width:300px;">
            <form action="" class="report-box">
  		<input type="radio" class="report-box2" name="radio" id="r1" value="0"><label for="r1">욕설/부적절한 언어 입니다.</label><br>
  		<input type="radio" class="report-box2" name="radio" id="r2" value="0"><label for="r2">스팸광고/도배글 입니다.</label><br>
  		<input type="radio" class="report-box2" name="radio" id="r2" value="0"><label for="r2">부적절한 컨텐츠 입니다.</label><br>
  		<input type="radio" class="report-box2" name="radio" id="r2" value="0"><label for="r2">음란성 게시물 입니다.</label><br>
  		<input type="radio" class="report-box2" name="radio" id="r2" value="1"><label for="r2">기타</label><br>
  		<input type="text"  class="report-box2 report-text" name="text" disabled placeholder="사유를 작성해주세요." >
  		
</div>

          </div>
          
          
        </div>
      </div>
      <div class="popup-foot">
        
       <input type="submit" class="pop-btn2" value="신고하기" id="close">
       </form>
        <span class="pop-btn close" id="close2">창 닫기</span>
      </div>
    </div>
</div>
</div>


</body>
</html>