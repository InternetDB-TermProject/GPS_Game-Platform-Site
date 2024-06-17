<%@ page import="repository.SteamRepository" %>
<%@ page import="payload.dto.AppPreviewDTO" %>
<%@ page import="java.util.List" %>
<!--<%@ page language="java" contentType="text/html; charset=UTF-8"
             pageEncoding="UTF-8"%>-->
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
<meta charset="UTF-8">
<title>Main Page</title>
<link rel="stylesheet" href="./main.css">
<link rel="stylesheet" href="../resources/css/header.css">
<script type="text/javascript" src="./MainHeader.js"></script>
</head>
<!--<%   
   String email = (String)request.getAttribute("email"); 
%> -->
<body>
<form>
<div id="header">
   <img src="../resources/image/Alogo.png" width=70px height=70px><h2>| STORE</h2>
</div>
<div id="Category">
   <div id="icons">
      <script>
      //검색창에 엔터를 눌렀을때 해당 주소에 파라미터값을 넘겨줌
         function enterKey(value) {
            location.href="SearchResult.game?Search=" + value;
            alert("검색 완료")
      }
      </script>
      <input type="text" id="searchIn" placeholder="검색어를 입력해주세요" autocomplete="off" onkeydown="if(event.keyCode == 13){enterKey(this.value)}"><a href="../profile/profile.jsp"><img src="../resources/image/user2.png" width=50 height=50></a><a href="../cart/cart.jsp"><img src="../resources/image/cart.png" width=55 height=55></a>
   
   </div>
   <div id="BorderLine">
      <h4>게임</h4>
      <div id="cross"></div>
      <div id="list">
         <div id="carteLi" class="cl">
            <ul>
               <h2>카테고리</h2>
               <ul>
                  <a href="../gameTag/gameTag.jsp?Search=무료"><li>무료 게임</li></a>
                  <a href="../gameTag/gameTag.jsp?Search=인기"><li>인기 게임</li></a>
               </ul>
            </ul>
         </div>
         <div id="carteLi2" class="cl">
            <ul>
               <h2>장르</h2>
               <ul>
                  <a href="../gameTag/gameTag.jsp?Search=1인칭 슈팅"><li>1인칭 슈팅</li></a>
                  <a href="../gameTag/gameTag.jsp?Search=액션"><li>액션</li></a>
                  <a href="../gameTag/gameTag.jsp?Search=전략"><li>전략</li></a>
                  <a href="../gameTag/gameTag.jsp?Search=멀티플레이"><li>멀티플레이</li></a>
                  <a href="../gameTag/gameTag.jsp?Search=액션RPG"><li>액션 RPG</li></a>
                  <a href="../gameTag/gameTag.jsp?Search=공포"><li>공포</li></a>
               </ul>
            </ul>
         </div>
         <div id="carteLi3" class="cl">
            <ul>
               <h2>게시판</h2>
               <ul>
                  <a href="../board/board.jsp?category=1"><li>QnA</li></a>
                  <a href="../board/board.jsp?category=2"><li>자유 게시판</li></a>
               </ul>
            </ul>
         </div>
         <div id="carteLi4" class="cl">
            <ul>
               <h2>게임 게시판</h2>
               <ul>
                  <a href="../gameBoard/gameBoard.jsp"><li>HTML</li></a>
                  <a href="../board/board"><li>Unity</li></a>
               </ul>
            </ul>
         </div>
      </div>
   </div>
</div>
   <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
      <ol class="carousel-indicators">
         <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
         <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
         <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
      </ol>
      <div class="carousel-inner">
         <div class="carousel-item active">
            <a href="DivisionInformation.game"><img class="d-block w-100" src="../resources/image/division.jpg" alt="Second slide" width=553px height=500px></a>
         </div>
      <div class="carousel-item">
         <a href="EscapeFromTarkovInformation.game"><img class="d-block w-100" src="../resources/image/eft_logo_promo.jpg" alt="Second slide" width=553px height=500px></a>
      </div>
      <div class="carousel-item">
         <a href="h1z1Information.game"><img class="d-block w-100" src="../resources/image/h1z1.jpg" alt="Third slide" width=553px height=500px></a>
            
         </div>
      </div>
      <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
      <span class="carousel-control-prev-icon" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
      </a>
      <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
      <span class="carousel-control-next-icon" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
      </a>
   </div>
   <div id="famousArea">
      <h3>인기 게임</h3>
   </div>
   <%
      List<AppPreviewDTO> apps = SteamRepository.getAppList().getAppPreviewDTOList();
      int i=0; int j;

      for(int k=0; k<apps.size()/3; k++){
   %>
   <div id="famousTagCard">
      <%
         j=i;
         for(;i<j+3;i++) {
            AppPreviewDTO d = apps.get(i);
      %>
      <div class="card">
         <div class="cardImageArea">
            <a href="DarkSoulsInformation.game"><img src=<%=d.getHeader_iamge()%> alt=""></a>
         </div>
         <h6><%=d.getName()%></h6>
         <p class="price">₩<%=d.getPrice()%></p>
      </div>
      <%}%>
   </div>
   <br>
   <%}%>



<%--   <div id="freeArea">--%>
<%--      <h3>무료 게임</h3>--%>
<%--   </div>--%>
<%--   <div id="freeTagCard">--%>
<%--      <div class="card">--%>
<%--         <a href="csgoInformation.game"><img src="../resources/image/csgo.jpg" alt=""></a>--%>
<%--         <h4>CS:GO</h4>--%>
<%--         <p class="price">무료</p>--%>
<%--      </div>--%>
<%--      <div class="card">--%>
<%--         <a href="WarthunderInformation.game"><img src="../resources/image/warThunder.jpg" alt=""></a>--%>
<%--         <h4>War Thunder</h4>--%>
<%--         <p class="price">무료</p>--%>
<%--      </div>--%>
<%--      <div class="card">--%>
<%--         <a href="WarframeInformation.game"><img src="../resources/image/warframe.jpg" alt=""></a>--%>
<%--         <h4>Warframe</h4>--%>
<%--         <p class="price">무료</p>--%>
<%--      </div>--%>
<%--      <div class="card">--%>
<%--         <a href="DeceitInformation.game"><img src="../resources/image/deceit.jpg" alt=""></a>--%>
<%--         <h4>Deceit</h4>--%>
<%--         <p class="price">무료</p>--%>
<%--      </div>--%>
<%--   </div>--%>
   <div id="bottomText">
   공식 GPS 상점에서 좋아하는 영웅을 모두 만나보십시오. 새로운 상품, 특별한 콜렉터 에디션과 멋진 프로모션 등 GPS 최고의 상품을 1년 내내 선보입니다. 시즌 패스부터 수집품까지,<br>
   풍성한 즐길 거리로 게임을 완벽하게 체험하실 수 있습니다. GPS 상점에는 콘솔과 PC 사용자를 위한 멋진 모험이 가득합니다.<br><br> <hr>
   2022-2022 GPS @Entertainment. All Rights Reserved. GPS, GPS.com and the GPS logo are trademarks of GPS Entertainment in the KR and/or other countries
   </div>
</form>
</body>
</html>