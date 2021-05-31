<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
     <%@ include file="../includes/header.jsp" %>
     
<style>
 .content-wrap{
    background: #f6f6f6;
    padding: 10px 0px 90px 0px;
   
}
.container-content{
    display: flex;
    justify-content: space-around;
    align-items: center;
  	padding: 40px 80px 40px 80px;
    cursor: pointer; 
    border-bottom: 1px solid black;
}
.container-content:hover{
	background-color: rgba(0, 0, 0, 0.356);
}

.container-content img{
    width: 500px;
    height: 400px;
}

.img2{
    padding-right: 50px;
}

 </style>
     <div class="content-wrap">
        <div class="container-content container-lg link1" name="keyword" id="keyword">
            <div class="img2"> <img src="/resources/IMG/study.jpg"></div>
            <div class="content-letter"><h4>Let's start Study Challenge!!</h4></div>
        </div>
        <div class="container-content container-lg link2">
            <div class="img2">
                 <img src="/resources/IMG/diet2.jpg"></div>
            <div class="content-letter"><h4>Let's start Exercise Challenge!!</h4></div>
        </div>
        <div class="container-content container-lg link3">
            <div class="img2"> <img src="/resources/IMG/other.jpg"></div>
            <div class="content-letter"><h4>Other Challenge</h4></div>
        </div>
    </div>
     <script>
    $(".link1").on("click",function(){
    	
         location.href="/challenge/content"; 
    });
    $(".link2").on("click",function(){
    	
        location.href="/challenge/content2"; 
   });
    $(".link3").on("click",function(){
    	
        location.href="/challenge/content3"; 
   });

</script>
      <%@include file="../includes/footer.jsp" %>