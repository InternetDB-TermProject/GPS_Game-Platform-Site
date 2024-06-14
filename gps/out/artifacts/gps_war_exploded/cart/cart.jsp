<%--<%@page import="cart.CartDto"%>--%>
<%--<%@page import="cart.CartDao"%>--%>
<%--<%@page import="game.SearchDto"%>--%>
<%--<%@page import="game.SearchDao"%>--%>
<%--<%@page import="signUp.ProfileDao"%>--%>
<%--<%@page import="signUp.ProfileDto"%>--%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%--<%--%>
<%--	request.setCharacterEncoding("utf-8");--%>
<%--	--%>
<%--	// 세션 값을 받아 변수에 저장해서 장바구니를 조회하는 SelectCart 메소드에 인자값을 넣는다.--%>
<%--	String email = (String)session.getAttribute("email");--%>
<%--	CartDao cdao = new CartDao();--%>
<%--	SearchDao dao = new SearchDao();--%>
<%--	ArrayList<CartDto> cdtos = cdao.SelectCart(email);--%>
<%--	int sum = cdao.cartSumSelect(email);--%>
<%--	ProfileDao dao2 = new ProfileDao();--%>
<%--	int credit = dao2.cashView(email);--%>
<%--	--%>
<%--	if(request.getParameter("error") != null) {--%>
<%--		int error = Integer.parseInt(request.getParameter("error"));--%>
<%--		--%>
<%--		if(error == 1) {--%>
<%--			out.println("<script>alert('돈이 부족합니다!!'); </script>");--%>
<%--		} else if(error == 0){--%>
<%--			out.println("<script>alert('결제 완료!!'); </script>");--%>
<%--		}--%>
<%--	}--%>

<%--%>--%>
<!DOCTYPE html>
<html>
<head>
    <style>
        * {margin: 0; padding: 0;}
    </style>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../resources/css/header.css">
    <link rel="stylesheet" href="../resources/css/search.css">
    <title>cart</title>
</head>
<body>
    <div id="header">
        <a href="../main/main.jsp"><img src="../resources/image/Alogo.png" width=70px height=70px></a><h2>| cart</h2>
    </div>
    <h2 id="SearchTitle">장바구니&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;보유 캐시 : 50000<%--<%=credit %>--%></h2>
    <div id="ResultList">
        <div id="ListHeader">
            <ul>
                <li><h3>분류</h3></li>
                <li><h3>타이틀</h3></li>
                <li><h3>가격</h3></li>
            </ul>
        </div>
        <div id="Result">
			<div id="list1">
			
			</div>
			<div id="list2">
			
			</div>
			<div id="list3">
			
			</div>
			<div id="list4">
			
			</div>
			<div id="list5">
			
			</div>
			<div id="list6">
			
			</div>
			<div id="list7">
			
			</div>
			<div id="list8">
			
			</div>
			<div id="list9">
			
			</div>
			<div id="list10">

			</div>
			<div id="sum"><h3>합계 : <%--<%=sum %>--%>원 </h3></div>
			<div id="pay"><%--a href="./Cpay.jsp?sum=<%=sum%>">--%><input type="button" id="btnPay" value="결제"></a></div>
        </div>
    </div>
</body>
<%--<%--%>
<%--	// 나온 결과물들을 div에 넣어줌(바쁘게 마감한다고 코드가 많이 더럽습니다 죄송합니다.)--%>
<%--	for(CartDto cdto : cdtos) {--%>
<%--	--%>
<%--	CartDto dtoo = new CartDto(cdto.getCuser(), cdto.getCgame(), cdto.getCprice());--%>
<%--	ArrayList<SearchDto> dtos = dao.SelectCartlist(dtoo);--%>
<%--	for(SearchDto dto : dtos) {--%>
<%--%>--%>
<%--	<script>--%>
<%--	document.querySelector("#list<%=dto.getGnum()%>").append(document.createElement("img"));--%>
<%--	document.querySelector("#list<%=dto.getGnum()%>").append(document.createElement("h3"));--%>
<%--	document.querySelector("#list<%=dto.getGnum()%>").append(document.createElement("h4"));--%>
<%--	</script>--%>
<%--<%--%>
<%--	//메인 키 값에 따라 게임 이미지 다르게 설정하기--%>
<%--	switch(dto.getGnum()) {--%>
<%--		case 1:--%>
<%--%>--%>
<%--		<script>--%>
<%--		document.querySelector("#list<%=dto.getGnum()%> > img ").setAttribute("src", "resources/css/image/Dark_souls_3_cover_art.jpg");--%>
<%--		document.querySelector("#list<%=dto.getGnum()%> > h3").innerHTML="<%=dto.getGname()%>";--%>
<%--		document.querySelector("#list<%=dto.getGnum()%> > h4").innerHTML="<%=dto.getGprice()%>원";--%>
<%--		</script>--%>
<%--<%--%>
<%--		break;--%>
<%--		case 2:--%>
<%--%>--%>
<%--		<script>--%>
<%--		document.querySelector("#list<%=dto.getGnum()%> > img ").setAttribute("src", "resources/css/image/eldenring.jpg");--%>
<%--		document.querySelector("#list<%=dto.getGnum()%> > h3").innerHTML="<%=dto.getGname()%>";--%>
<%--		document.querySelector("#list<%=dto.getGnum()%> > h4").innerHTML="<%=dto.getGprice()%>원";--%>
<%--		</script>--%>
<%--<%--%>
<%--		break;--%>
<%--		case 3:--%>
<%--%>--%>
<%--		<script>--%>
<%--		document.querySelector("#list<%=dto.getGnum()%> > img ").setAttribute("src", "resources/css/image/BF1.jpg");--%>
<%--		document.querySelector("#list<%=dto.getGnum()%> > h3").innerHTML="<%=dto.getGname()%>";--%>
<%--		document.querySelector("#list<%=dto.getGnum()%> > h4").innerHTML="<%=dto.getGprice()%>원";--%>
<%--		</script>--%>
<%--<%--%>
<%--		break;--%>
<%--		case 4:--%>
<%--%>--%>
<%--		<script>--%>
<%--		document.querySelector("#list<%=dto.getGnum()%> > img ").setAttribute("src", "resources/css/image/eft.jpg");--%>
<%--		document.querySelector("#list<%=dto.getGnum()%> > h3").innerHTML="<%=dto.getGname()%>";--%>
<%--		document.querySelector("#list<%=dto.getGnum()%> > h4").innerHTML="<%=dto.getGprice()%>원";--%>
<%--		</script>--%>
<%--<%--%>
<%--		break;--%>
<%--		case 5:--%>
<%--%>--%>
<%--		<script>--%>
<%--		document.querySelector("#list<%=dto.getGnum()%> > img ").setAttribute("src", "resources/css/image/csgo.jpg");--%>
<%--		document.querySelector("#list<%=dto.getGnum()%> > h3").innerHTML="<%=dto.getGname()%>";--%>
<%--		document.querySelector("#list<%=dto.getGnum()%> > h4").innerHTML="<%=dto.getGprice()%>원";--%>
<%--		</script>--%>
<%--<%--%>
<%--		break;--%>
<%--		case 6:--%>
<%--%>--%>
<%--		<script>--%>
<%--		document.querySelector("#list<%=dto.getGnum()%> > img ").setAttribute("src", "resources/css/image/warThunder.jpg");--%>
<%--		document.querySelector("#list<%=dto.getGnum()%> > h3").innerHTML="<%=dto.getGname()%>";--%>
<%--		document.querySelector("#list<%=dto.getGnum()%> > h4").innerHTML="<%=dto.getGprice()%>원";--%>
<%--		</script>--%>
<%--<%--%>
<%--		break;--%>
<%--		case 7:--%>
<%--%>--%>
<%--		<script>--%>
<%--		document.querySelector("#list<%=dto.getGnum()%> > img ").setAttribute("src", "resources/css/image/warframe.jpg");--%>
<%--		document.querySelector("#list<%=dto.getGnum()%> > h3").innerHTML="<%=dto.getGname()%>";--%>
<%--		document.querySelector("#list<%=dto.getGnum()%> > h4").innerHTML="<%=dto.getGprice()%>원";--%>
<%--		</script>--%>
<%--<%--%>
<%--		break;--%>
<%--		case 8:--%>
<%--%>--%>
<%--		<script>--%>
<%--		document.querySelector("#list<%=dto.getGnum()%> > img ").setAttribute("src", "resources/css/image/deceit.jpg");--%>
<%--		document.querySelector("#list<%=dto.getGnum()%> > h3").innerHTML="<%=dto.getGname()%>";--%>
<%--		document.querySelector("#list<%=dto.getGnum()%> > h4").innerHTML="<%=dto.getGprice()%>원";--%>
<%--		</script>--%>
<%--<%--%>
<%--		break;--%>
<%--		case 9:--%>
<%--%>--%>
<%--		<script>--%>
<%--		document.querySelector("#list<%=dto.getGnum()%> > img ").setAttribute("src", "resources/css/image/division.jpg");--%>
<%--		document.querySelector("#list<%=dto.getGnum()%> > h3").innerHTML="<%=dto.getGname()%>";--%>
<%--		document.querySelector("#list<%=dto.getGnum()%> > h4").innerHTML="<%=dto.getGprice()%>원";--%>
<%--		</script>--%>
<%--<%--%>
<%--		break;--%>
<%--		case 10:--%>
<%--%>--%>
<%--		<script>--%>
<%--		document.querySelector("#list<%=dto.getGnum()%> > img ").setAttribute("src", "resources/css/image/h1z1.jpg");--%>
<%--		document.querySelector("#list<%=dto.getGnum()%> > h3").innerHTML="<%=dto.getGname()%>";--%>
<%--		document.querySelector("#list<%=dto.getGnum()%> > h4").innerHTML="<%=dto.getGprice()%>원";--%>
<%--		</script>--%>
<%--<%--%>
<%--	}--%>
<%--%>--%>
<%--	<script>  --%>
<%--	document.querySelector("#list<%=dto.getGnum()%>").style.height="20%";--%>
<%--	document.querySelector("#list<%=dto.getGnum()%>").style.borderBottomStyle="solid";--%>
<%--	document.querySelector("#list<%=dto.getGnum()%> > img ").style.width="140px";--%>
<%--	document.querySelector("#list<%=dto.getGnum()%> > img ").style.height="80%";--%>
<%--	document.querySelector("#list<%=dto.getGnum()%> > h3").style.position="relative";--%>
<%--	document.querySelector("#list<%=dto.getGnum()%> > h3").style.width="40%";--%>
<%--	document.querySelector("#list<%=dto.getGnum()%> > h3").style.left="43%";--%>
<%--	document.querySelector("#list<%=dto.getGnum()%> > h3").style.top="-55%";--%>
<%--	document.querySelector("#list<%=dto.getGnum()%> > h4").style.position="relative";--%>
<%--	document.querySelector("#list<%=dto.getGnum()%> > h4").style.width="40%";--%>
<%--	document.querySelector("#list<%=dto.getGnum()%> > h4").style.left="82%";--%>
<%--	document.querySelector("#list<%=dto.getGnum()%> > h4").style.top="-65%";--%>
<%--	</script>--%>
<%--<%--%>
<%--		}--%>
<%--	}--%>
<%--%>--%>

</html>