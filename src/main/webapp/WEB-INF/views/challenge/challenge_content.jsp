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
    border-bottom: 1px solid black;
}
.img{
    margin-bottom: 10px;
}
.content-letter h4{
    text-align: right;
}
.container-content img{
    width: 50%;
}
.table-wrap{
    padding: 80px;
}

/* 여기까지 */

.container-content:hover{
    background-color: rgba(0, 0, 0, 0.541);
    color: whitesmoke;
}
.content-wrap h2{
    margin-left: 20%;
    margin-bottom: 30px;
}
.step-wrap{
    display: flex;
    justify-content: space-around;
    align-items: center;
}
.step{
    border-radius: 20px;
    border: 2px solid black;
    width: 300px;
    height: 200px;
    padding-top: 80px;
    text-align: center;
    font-weight: bold;
}





/* 이게 반응형 웹을 만드는 법 !!! */
@media screen and (max-width:768px) { /* 모바일 */
                /* breakpoint */
                
    /* 위의 조건일 때만  아래의 css 동작함 */
    .head-content-wrap{
        font-size: 10px;
    }
    .head-grow{
        flex-grow: 0;
    }
    .main-title-box{
        font-size: 10px;
    }
    .head a,.head p{
        font-size:10px;
    }
    .profile{
        width: 20px;
        height: 20px;
    }
    .content-explian{
        /* flex-direction: column;
        flex-wrap: ; */
        flex-flow: column nowrap;
    }
    
}
@media screen and (max-width:992px) { /* 태블릿 */

    .content-explian{
        flex-flow: row wrap;
    }
    
}
</style>
<div class="content-wrap">
        <div class="container-content container-lg">
            
            <div class="img"> <img src="/resources/IMG/study.jpg"></div>
            <div class="content-letter"><h4>Let's start Study Challenge!!</h4></div>
            
        </div>
    </div>
    <div class="content-wrap">
        <h2>참여방법</h2>
        <div class="container-lg step-wrap">
            
            <div class="step btn-outline-primary">
                하루하루 공부한 내용을 인증해보세요
            </div>
            <div class="step btn-outline-secondary">
                자신의 공부 방법을 공유해보세요
            </div>
            <div class="step btn-outline-success">
                30일 챌린지 성공을 sns에 공유하세요
            </div>
            
        </div>
    </div>
    <div class="table-wrap">
        <table class="table table-hover">
            <thead>
              <tr>
                <th scope="col">#</th>
                <th scope="col">First</th>
                <th scope="col">Last</th>
                <th scope="col">Handle</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <th scope="row">1</th>
                <td></td>
                <td>Otto</td>
                <td>@mdo</td>
              </tr>
              <tr>
                <th scope="row">2</th>
                <td>Jacob</td>
                <td>Thornton</td>
                <td>@fat</td>
              </tr>
              <tr>
                <th scope="row">3</th>
                <td colspan="2">Larry the Bird</td>
                <td>@twitter</td>
                <td name="items" id="items" list="datalistOptions">@twitter</td>
              </tr>
            </tbody>
          </table>
    </div>
   
   <script>
   $.ajax({
       method:"GET",
       url: "/challenge/content",
       data: {query:"30일 공부 챌린지"},
     	success:function(data){
     		console.log(data);
     	},
     	error:function(error){
     		console.log(error);
     	}
   });
   
    </script>


   
    
  <%@include file="../includes/footer.jsp" %>