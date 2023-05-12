<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<button onclick="kakaoShare()">버버</button>
    <!-- kakao sdk 호출 -->
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>

<script type="text/javascript">
  // SDK를 초기화 합니다. 사용할 앱의 JavaScript 키를 설정해 주세요.
  Kakao.init('603243ecdb0757012b9f08d95c495f53');

  // SDK 초기화 여부를 판단합니다.
  console.log(Kakao.isInitialized());

  function kakaoShare() {
    Kakao.Link.sendDefault({
      objectType: 'feed',
      content: {
        title: '안녕안녕 헬로월드 마이크테스트',
        description: '강문영 바보바보',
        imageUrl: 'https://ifh.cc/g/gkslnN.jpg',
        link: {
          mobileWebUrl: 'https://www.naver.com/',
          webUrl: 'https://www.youtube.com/watch?v=72fDsC2kX7g',
        },
      },
      social: {
          likeCount: 286,  //좋아요 수
          commentCount: 45,  //댓글 수
          sharedCount: 845,  //공유 수
        },
        
      buttons: [
        {
          title: '웹으로 보기',
          link: {
            mobileWebUrl: 'http://localhost:8088/nyangsinsa7/blog_detail.jsp',
            webUrl: 'http://localhost:8088/nyangsinsa7/blog_detail.jsp',
          },
        },
      ],
      // 카카오톡 미설치 시 카카오톡 설치 경로이동
      installTalk: true,
    })
  }


  
</script>
</body>
</html>