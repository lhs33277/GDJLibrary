<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
   .container {
   width: 1140px;
   margin: 0 auto;
   }
   .clearfix {
      position: fixed;
      top: 0;
      left: 0;
      right: 0;
      background-color: #fffcf7;
   }
   
   .clearfix ul {
      float: right;
      margin-right: 50px;
   }
   
   .clearfix ul li {
      float: left;
      list-style: none;
      margin-left: 20px;
   }
   
   .clearfix ul li a {
      color: #14357a;
      text-decoration: none;
      line-height: 30px;
      font-weight: bold;
   }

   
   
   .aeq {
      color: #14357a;
      text-decoration: none;
      line-height: 30px;
   }
   
      #divTopMenu {
      background-color: beige;
      text-align: center;
   }
   
   .divTopMenu {
      display: inline-block;
      font-size: 30px;
      font-weight: 900;
      margin: 20px;
      text-decoration: none;
      color: 3d3b3b;
      padding-left: 20px;
      padding-right: 20px;
      padding-top: 50px;
      
   }
   
   .divTopMenu a{
      color: #4a4848;
      text-decoration: none;
   }
   
   .divTopMenu a:hover {
      color: black;
      font-size: 31px;
   }


   .clearfix2 {
      position: fixed;
      top: 50px;
      left: 0;
      right: 0;
      background-color: #f5f5dc;
      padding-bottom: 22px;
   }

   .clearfix2 ul {
      float: center;
      margin-right: 50px;
      margin-left: 320px;
   }
   
   .clearfix2 ul li {
      float: left;
      list-style: none;
      margin-left: 25px;
      margin-right: 25px;
   }
   
   .clearfix2 ul li a {
      color: #14357a;
      text-decoration: none;
      line-height: 30px;
      font-weight: bold;
      font-size: 25px;
   }
   
   #logo{
   		margin: 30px 40px -60px 80px;
         margin: 30px 40px -60px 80px;
   }
   
</style>
</head>
<body>

   <!-- ????????? ????????? ????????? ?????? -->
   <c:if test="${loginMember eq null}">
      <header class="clearfix">
           <div class="container">
               <ul>
                   <li><a href="${contextPath}/member/loginPage">?????????</a></li>
               <li><a href="${contextPath}/member/agreePage">????????????</a></li>
               </ul>
           </div>
       </header>
   </c:if>
   <!-- ????????? ????????? ????????? ?????? --> 
   <c:if test="${loginMember ne null}">
      
      <header class="clearfix">
           <div class="container">
               <ul>
                <li class="aeq">${loginMember.memberName}???</li>
                <li><a href="${contextPath}/member/logout">????????????</a></li>
               <li><a href="${contextPath}/member/myPage">???????????????</a></li>
               </ul>
   
           </div>
          
    </header>
   </c:if>
   <section class="clearfix2">

   <div id="logo"><a href="${contextPath}/"><img width="150px" src="${contextPath}/resources/images/logo3.png" ></a></div>


    <div class="container2">
        <ul>
            <li><a href="${contextPath}/book/listPage">????????????</a></li>
            <li><a href="${contextPath}/returned/returnedBookPage">????????????</a></li>
            <li><a href="${contextPath}/notice/noticePage">????????????</a></li>
            <li><a href="${contextPath}/qaa/qaaPage">???????????????</a></li>
            <li><a href="${contextPath}/fnq/fnqPage">??????????????????</a></li>
            <li><a href="${contextPath}/seat/seatAgreePage">???????????????</a></li>
        </ul>
    </div>
   </section>
  
   
   
</body>
</html>