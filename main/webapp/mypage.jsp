<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="nss" tagdir="/WEB-INF/tags/" %>

<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="UTF-8">
<meta name="description" content="Ogani Template">
<meta name="keywords" content="Ogani, unica, creative, html">
<meta name="viewport"
   content="width=device-width, initial-scale=1.0"
>
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>냥신사 | 마이페이지</title>

<!-- google Font -->
<link
   href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap"
   rel="stylesheet"
>

<!-- Css Styles -->
<link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
<link rel="stylesheet" href="css/font-awesome.min.css"
   type="text/css"
>
<link rel="stylesheet" href="css/elegant-icons.css" type="text/css">
<link rel="stylesheet" href="css/nice-select.css" type="text/css">
<link rel="stylesheet" href="css/jquery-ui.min.css" type="text/css">
<link rel="stylesheet" href="css/owl.carousel.min.css"
   type="text/css"
>
<link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
<link rel="stylesheet" href="css/style.css" type="text/css">
</head>
<style type="text/css">
.mypagedt {
   display: flex;
   width: 100px;
   height: 30px;
   border: 2px solid #6667AB;
   border-radius: 15px;
   margin: 10px;
   padding: 5px;
   padding-top: 2px;
   padding-bottom: 2px;
   justify-content: center;
   background: #6667AB;
   color: #FFFFFF;
}

.mypagetext {
   padding-left: 30px;
}

.mypageli {
   list-style: none;
   line-height: 150%;
}
</style>
<body>
   <!-- Page Preloder -->
   <div id="preloder">
      <div class="loader"></div>
   </div>

   <!-- Humberger Begin -->
   <div class="humberger__menu__overlay"></div>
   <div class="humberger__menu__wrapper">
      <div class="humberger__menu__logo">
         <a href="main.do"><img src="img/logo.png" alt="홈으로 가기"></a>
      </div>
      <div class="humberger__menu__cart">
         <ul>
            <li><a href="shoping_cart.jsp"><i class="fa fa-shopping-bag"></i> <span>${fn:length(cList)}</span></a></li>
         </ul>
      </div>

   <div class="humberger__menu__widget">
      <!-- 로그인 -->
      <nss:login />
   </div>

      <nav class="humberger__menu__nav mobile-menu">
         <ul>
            <li class="active"><a href="main.do">홈</a></li>
            <li><a href="shop.do?category=all&sort=sellDesc">쇼핑</a></li>
            <li><a href="contact.jsp">Contact</a></li>
         </ul>
      </nav>
      <div id="mobile-menu-wrap"></div>
         <div class="header__top__right__social">
            <a href="https://www.facebook.com/profile.php?id=100089405234926"><i class="fa fa-facebook"></i></a>
            <a href="https://www.instagram.com/nyangsinsa5/"><i class="fa fa-instagram"></i></a>
            <a href="https://twitter.com/nyangsinsa"><i class="fa fa-twitter"></i></a>
         </div>
         <div class="humberger__menu__contact">
            <ul>
               <li><i class="fa fa-envelope"></i>nyangsinsa@gmail.com</li>
               <li>대한민국 최고의 반려묘 용품 쇼핑몰</li>
            </ul>
         </div>
   </div>
   <!-- Humberger End -->

   <!-- Header Section Begin -->
   <header class="header">
      <div class="header__top">
         <div class="container">
            <div class="row">
               <div class="col-lg-6 col-md-6">
                  <div class="header__top__left">
                     <ul>
                        <li><i class="fa fa-envelope"></i>nyangsinsa@gmail.com</li>
                        <li>대한민국 최고의 반려묘 용품 쇼핑몰</li>
                     </ul>
                  </div>
               </div>
               <div class="col-lg-6 col-md-6">
                  <div class="header__top__right">
                     <div class="header__top__right__social">
                        <a href="https://www.facebook.com/profile.php?id=100089405234926"><i class="fa fa-facebook"></i></a>
                        <a href="https://www.instagram.com/nyangsinsa5/"><i class="fa fa-instagram"></i></a>
                        <a href="https://twitter.com/nyangsinsa"><i class="fa fa-twitter"></i></a>
                     </div>
                     
                     <!-- 로그인 -->
                     <nss:login />
                     
                  </div>
               </div>
            </div>
         </div>
      </div>
      <div class="container">
         <div class="row">
            <div class="col-lg-3">
               <div class="header__logo">
                  <a href="main.do"><img src="img/logo.png" alt="홈으로 가기"></a>
               </div>
            </div>
            <div class="col-lg-6">
               <nav class="header__menu">
                  <ul>
                     <li class="active"><a href="main.do">홈</a></li>
                     <li><a href="shop.do?category=all&sort=sellDesc">쇼핑</a></li>
                     <li><a href="contact.jsp">Contact</a></li>
                  </ul>
               </nav>
            </div>
            <div class="col-lg-3">
               <div class="header__cart">
                  <ul>
                     <li><a href="shoping_cart.jsp"><i class="fa fa-shopping-bag"></i> <span>${fn:length(cList)}</span></a></li>
                  </ul>
               </div>
            </div>
         </div>
         <div class="humberger__open">
            <i class="fa fa-bars"></i>
         </div>
      </div>
   </header>
   <!-- Header Section End -->

   <!-- Hero Section Begin index는 아래줄 section class="hero" -->
   <section class="hero hero-normal">
      <div class="container">
         <div class="row">
            <div class="col-lg-3">
               <div class="hero__categories">
                  <div class="hero__categories__all">
                     <i class="fa fa-bars"></i> <span>메뉴</span>
                  </div>
                  <ul>
                     <li><a href="shop.do?category=all">전체</a></li>
                     <li><a href="shop.do?category=food">사료</a></li>
                     <li><a href="shop.do?category=treat">간식</a></li>
                     <li><a href="shop.do?category=sand">모래</a></li>
                  </ul>
               </div>
            </div>
            <div class="col-lg-9">
               <div class="hero__search">
                  <div class="hero__search__form">
                     <form action="search.do">
                        <!-- <input type="hidden" name="searchCondition" value="pName">  -->
                        <input type="text" name="searchContent" placeholder="필요한 거 있냥?" required>
                        <button type="submit" class="site-btn">검색</button>
                     </form>
                  </div>
                  <div class="hero__search__phone">
                     <div class="hero__search__phone__icon">
                        <i class="fa fa-phone"></i>
                     </div>
                     <div class="hero__search__phone__text">
                        <h5>02-0202-0202</h5>
                        
                        <span>상담 가능 시간<br>평일 09:00~18:00</span>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </section>
   <!-- Hero Section End -->

   <!-- 메인 화면에는 제외 -->
   <!-- Breadcrumb Section Begin -->
   <section class="breadcrumb-section set-bg" data-setbg="">
      <div class="container">
         <div class="row">
            <div class="col-lg-12 text-center">
               <div class="breadcrumb__text">
                  <h2>마이페이지</h2>
                  <!-- <div class="breadcrumb__option">
                     <a href="./index.html">홈</a>
                  </div> -->
               </div>
            </div>
         </div>
      </div>
   </section>
   <!-- Breadcrumb Section End -->
   <section class="blog spad">
      <div class="container">
         <div class="row">
            <div class="col-lg-3 col-md-5">
               <div class="sidebar">
                  <div class="sidebar__item">
                     <h4>마이페이지</h4>
                     <hr>
                     <ul>
                        <li><a href="mypage.do">내정보</a></li>
                        <li><a href="orderList.do">주문내역</a></li>
                        <li><a href="check_password.jsp">회원정보변경</a></li>
                     </ul>
                  </div>
               </div>
            </div>
            <div class="col-lg-9 col-md-7">

               <div class="col-lg-6 col-md-6 col-sm-6">
                  <div class="blog__item">
                     <div class="blog__item__pic">
                        <h3 style="font-weight: bold;">회원정보</h3>
                        <hr>
                     </div>
                     <ul>
                        <li class="mypageli">
                           <div>
                              <div class="mypagedt">아이디</div>
                              <span class="mypagetext">${member.userId}</span> <br>
                           </div>

                        </li><hr>

                        <li class="mypageli">
                           <div class="mypagedt">이름</div> <span class="mypagetext">${member.userName}</span>
                           <br>
                        </li><hr>

                        <li class="mypageli">
                           <div class="mypagedt">고영이 이름</div> <span class="mypagetext">${member.catName}</span>
                           <br>
                        </li><hr>
                        <li class="mypageli">

                           <div class="mypagedt">이메일</div> <span class="mypagetext">${member.email}</span>
                           <br>
                        </li><hr>
                        <li class="mypageli">
                           <div class="mypagedt">전화번호</div> <span class="mypagetext">${member.phoneNum}</span>
                           <br>
                        </li><hr>
                        <li class="mypageli">
                           <div class="mypagedt">주소</div> <span class="mypagetext">${member.address}</span>
                        </li></ul>
                  </div>



               </div>


            </div>

            <div class="col-lg-6 col-md-6 col-sm-6">

               <div class="blog__item">
                  <div class="blog__item__pic"></div>

               </div>
            </div>


            <div class="col-lg-6 col-md-6 col-sm-6">

               <div class="blog__item">
                  <div class="blog__item__pic">
                     <!--   <img src="img/blog/blog-4.jpg" alt="">-->
                  </div>
                  <div class="blog__item__text"></div>
               </div>
            </div>
            <div class="col-lg-6 col-md-6 col-sm-6">
               <div class="blog__item">
                  <div class="blog__item__pic">
                     <!--   <img src="img/blog/blog-6.jpg" alt=""> -->
                  </div>
                  <div class="blog__item__text"></div>
               </div>
            </div>
            <!-- <div class="col-lg-12">
                  <div class="product__pagination blog__pagination">
                     <a href="#">1</a> <a href="#">2</a> <a href="#">3</a> <a href="#"><i
                        class="fa fa-long-arrow-right"></i></a>
                  </div>
               </div> -->
         </div>
      </div>
      </div>
      <!--   </div>-->

   </section>
   <!-- Footer Section Begin -->
   <footer class="footer spad">
      <div class="container">
         <div class="row">
            <div class="col-lg-3 col-md-6 col-sm-6">
               <div class="footer__about">
                  <div class="footer__about__logo">
                     <a href="./index.html"><img src="img/logo.png" alt="로고"></a>
                  </div>
                  <ul>
                     <li>주소: 서울 강남구 역삼동 골목길</li>
                     <li>전화: +82 02-0202-0202</li>
                     <li>이메일: nyangsinsa@gmail.com</li>
                  </ul>
               </div>
            </div>
            <div class="col-lg-4 col-md-6 col-sm-6 offset-lg-1">
               <div class="footer__widget">
                  <h6>유용한 링크</h6>
                  <ul>
                     <li>회사 소개</li>
                     <li>개인정보약관</li>
                     <li>우리의 서비스</li>
                     <li>연락</li>
                  </ul>
               </div>
            </div>
            <div class="col-lg-4 col-md-12">
               <div class="footer__widget">
                  <h6>뉴스레터에 가입하세요!</h6>
                  <p>새소식과 이벤트정보 구독하기</p>
                  <form action="#">
                     <input type="text" placeholder="이메일 주소를 입력하세요">
                     <button type="submit" class="site-btn">구독</button>
                  </form>
                  <div class="footer__widget__social">
                     <a><i class="fa fa-facebook"></i></a> <a><i
                        class="fa fa-instagram"
                     ></i></a> <a><i class="fa fa-twitter"></i></a> <a><i
                        class="fa fa-pinterest"
                     ></i></a>
                  </div>
               </div>
            </div>
         </div>
         <div class="row">
            <div class="col-lg-12">
               <div class="footer__copyright">
                  <div class="footer__copyright__text">
                     <p>
                        <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                        Copyright 냥신사&copy;
                        <script>
                           document.write(new Date().getFullYear());
                        </script>
                        All rights reserved | This template is made with <i
                           class="fa fa-heart" aria-hidden="true"
                        ></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
                        <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                     </p>
                  </div>
                  <div class="footer__copyright__payment">
                     <img src="img/payment-item.png" alt="결제 카드 이미지">
                  </div>
               </div>
            </div>
         </div>
      </div>
   </footer>
   <!-- Footer Section End -->

   <!-- Js Plugins -->
   <script src="js/jquery-3.3.1.min.js"></script>
   <script src="js/bootstrap.min.js"></script>
   <script src="js/jquery.nice-select.min.js"></script>
   <script src="js/jquery-ui.min.js"></script>
   <script src="js/jquery.slicknav.js"></script>
   <script src="js/mixitup.min.js"></script>
   <script src="js/owl.carousel.min.js"></script>
   <script src="js/main.js"></script>



</body>

</html>