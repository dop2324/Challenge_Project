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
        <div class="container-content container-lg" name="keyword" id="keyword">
            <div class="img2"> <img src="/resources/IMG/study.jpg"></div>
            <div class="content-letter"><h4>Lorem ipsum dolor sit amet consectetur adipisicing elit. Eveniet quis iure facere? Fugiat eius reiciendis quos exercitationem excepturi voluptatibus ex, tenetur iure eligendi ea deserunt! Labore perspiciatis dicta exercitationem. Voluptate?</h4></div>
        </div>
        <div class="container-content container-lg">
            <div class="img2">
                 <img src="/resources/IMG/diet2.jpg"></div>
            <div class="content-letter"><h4>Lorem ipsum dolor sit amet consectetur adipisicing elit. Eveniet quis iure facere? Fugiat eius reiciendis quos exercitationem excepturi voluptatibus ex, tenetur iure eligendi ea deserunt! Labore perspiciatis dicta exercitationem. Voluptate?</h4></div>
        </div>
        <div class="container-content container-lg">
            <div class="img2"> <img src="/resources/IMG/other.jpg"></div>
            <div class="content-letter"><h4>Lorem ipsum dolor sit amet consectetur adipisicing elit. Eveniet quis iure facere? Fugiat eius reiciendis quos exercitationem excepturi voluptatibus ex, tenetur iure eligendi ea deserunt! Labore perspiciatis dicta exercitationem. Voluptate?</h4></div>
        </div>
    </div>
     <script>
    $(".container-content").on("click",function(){
    	
         location.href="/challenge/content"; 
    });

</script>
      <%@include file="../includes/footer.jsp" %>