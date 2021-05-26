<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>테이블 연습</title>

	<link href="/resources/CSS/layout.css" rel="stylesheet">
	<link href="/resources/fa/css/all.css" rel="stylesheet">
	<link href="/resources/CSS/board2.css" rel="stylesheet">
    <link href="/resources/dist/css/sb-admin-2.css" rel="stylesheet">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
	<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Quicksand&display=swap" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>
</head>
<style>
	*{
	font-family: 'Quicksand', sans-serif;
	}
.profile{
	cursor: pointer;
}
</style>
<body>
    <header class="head">
        <div class="head-nav">
            <a class="menu-trigger" href="#">
                <span class="span-nav"></span>
                <span class="span-nav"></span>
                <span class="span-nav"></span>
            </a>
            
        </div>
        <div class="head-nav-content">

        </div>
       <div class="head-grow"></div>
        <div class="head-content-wrap" style="width: 50%; align-items:center; flex-wrap:wrap;">
            <div class="head-content">
                <a href="/main/home">Main</a>
            </div>
            
            <div class="head-content">
                <a href="/challenge/">Challenge</a>
            </div>
            <div class="head-content">
                <a href="/board/list">Community</a>
            </div>
           	<c:catch>
           <c:choose>
           	<c:when test="${empty login }">
           	<div class="head-content js-login" style="padding-left: 50px;" >
                <a href="/main/login">Login</a>
            </div>
            <div class="head-content">
                <a href="/main/sign">Sign</a>
            </div>
            </c:when>
            <c:otherwise>
    
             <div class="head-content">
                <a href="/object/list?idbno=${login.idbno}">MY Plan</a>
            </div>
            	<div class="head-content" >
                <a href="/main/logout">Logout</a>
            </div>
            	
            </c:otherwise>
           </c:choose>
           </c:catch>
            
       </div>
  
        
       



    </header>
    <!-- jQuery -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
    <script>
    	$(".profile").on("click",function(){
    		location.href = "/object/list?idbno=${login.idbno}";
    	})
    </script>
    