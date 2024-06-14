<%@page import="java.util.ArrayList"%>
<%--<%@page import="signUp.ProfileDto"%>--%>
<%--<%@page import="signUp.ProfileDao"%>--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%--<%--%>
<%--   request.setCharacterEncoding("utf-8");--%>
<%--   //해당 유저의 이름과 소개글을 입력칸에 미리 표시해둠--%>
<%--   ProfileDao dao = new ProfileDao();--%>
<%--   String cmail = (String) session.getAttribute("email");--%>
<%--   ArrayList<ProfileDto> dtos = dao.profileNameSearch(cmail);--%>
<%--   String name = "";--%>
<%--   String infor = "";--%>

<%--   for(ProfileDto dto : dtos) {--%>
<%--      name = dto.getName();--%>
<%--      infor = dto.getinFor();--%>
<%--   }--%>
<%-- %>--%>
<!DOCTYPE html>
<html>
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../resources/css/header.css">
    <link rel="stylesheet" href="./profileModify.css">
    <title>profileModify</title>
</head>
<body>
   <div id="header">
        <a href="../main/main.jsp"><img src="../resources/image/Alogo.png" width=70px height=70px></a><h2>| PROFILE</h2>
    </div>

   <form action="./profileUpdate.jsp" method="post" name = "form" id = "form">
      
      <div id="profile">
          <div id="proif" class="if">
               <img src="../resources/image/unknownAvatar.jpg">
<%--               <h3 id="hn">닉네임<input type="text" id="insName" name="uname" value ="<%=name%>"></h3>--%>
<%--               <h3 id="hc">소개<input type="text" id="insCon" name="infor" value = "<%=infor%>"></h3>--%>
           </div>
            <input type="submit" onclick = "insert()"class="snip1535" id="btnmodi" value="수정">
          <a href="./profile.jsp"><button id="btncanc">취소</button></a>
      </div>
   </form>
</body>
<script type ="text/javascript">
var doubleSubmitFlag = false;
function doubleSubmitCheck(){
    if(doubleSubmitFlag){
        return doubleSubmitFlag;
    }else{
        doubleSubmitFlag = true;
        return false;
    }
}

function insert(){
    if(doubleSubmitCheck()) return;

    alert("등록");
}
</script>
</html>