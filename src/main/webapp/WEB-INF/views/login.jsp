<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
     <%@ include file="includes/header.jsp" %>
 <style>
 div,input,textarea{
    box-sizing: border-box;
}
body{
    background-color: rgba(0, 0, 0, 0.651);
}
.form-wrap{
    top:0px;
    margin-top: 170px;
    width: 100%;
    padding: 30px;
    margin-bottom: 400px;
}
.form-white{
    width:90%;
    max-width: 700px;
    padding:20px;
    background-color: white;
    margin: auto;
}
.form-half{
    width: 50%;
    float: left;
    padding:10px;
    margin: 0;
}
.form-container{
    padding: 10px;
}
.form-input{
    width:100%;
    border-radius: 5px;
    border: 1px solid #ccc;
    padding: 15px;
    font-size: 15px;
}
.form-submit{
    width:200px;
    border-radius: 5px;
    border:none;
    padding: 10px;
    background-color: darkorange;
    color:white;
    font-size: 18px;
    margin-left: auto;
    display: block;
    margin-right: 10px;
}
.out{
    font-size: 60px;
    font-weight: bold;
    text-align: right;
    padding-bottom: 30px;
}
a {
    text-decoration: none;
    color: black;
}
.login-head{
	display:flex;
	justify-content: space-between;
	align-items: center;
}
 </style>
 <div class="form-wrap-bg">
 <div class="form-wrap">
        
        <div class="form-white">
       		<div class="login-head">
            <h2>로그인</h2>
             <div class="out"><a href="/main/home">x</a></div>
             </div>
            <form action="login" method="post">
                <div class="form-container">
                <p>아이디</p>
                <input type="text" class="form-input" style="margin-bottom: 20px;" name="id" id="id">
                
                    <p>비밀번호</p>
                <input type="password" class="form-input" name="password" id="password"  style="margin-bottom: 20px;">
                <c:if test="${result == 0}">
                <div class="login_error" style="color: red;">아이디와 비밀번호를 한번 더 확인 해주세요</div>
                </c:if>
            </div>
               
                
                <button class="form-submit" type="submit">Login</button>
            </form>
        </div>
        </div>
     	</div>
     
 <script>
 	
 </script>
     
 <%@include file="includes/footer.jsp" %>