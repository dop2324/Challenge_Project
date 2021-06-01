<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
     <%@ include file="../includes/header.jsp" %>   
        
        
 
        
        <!-- jquery -->
            <div class="board-wrap">
                
            
             <h1 class="page-header">Community</h1>
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            커뮤니티 게시판
                            <button id='regBtn' type="button" class="btn btn-xs pull-right btn-outline-primary">Register NEW board</button>
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body tblBoard">
                            <table width="100%" class="table table-striped table-bordered table-hover" id="dataTables-example">
                                <thead>
                                    <tr>
                                        <th>#번호</th>
                                        <th>제목</th>
                                        <th>작성자</th>
                                        <th>작성일</th>
                                        <th>수정일</th>
                                    </tr>
                                </thead>
                               
                                <c:forEach items="${list }" var="board">
                                <tr>
                                	<td><c:out value="${board.bno }" /></td>
                                	<td><a class="move" href='<c:out value="${board.bno}"/>'>
                                	<c:out value="${board.title }" /> <b>[ <c:out value="${board.replyCnt}"/> ]</b></a></td>
                                	<td><c:out value="${board.writer }" /></td>
                                	<td><fmt:formatDate pattern="yyyy-MM-dd" value="${board.regdate }"/></td>
                                	<td><fmt:formatDate pattern="yyyy-MM-dd" value="${board.updatedate }"/></td>
                                </tr>
									  </c:forEach>                             
							 </table>
							  <div class='pull-right'>
						         	<ul class="pagination">
						         	<c:if test="${pageMaker.prev}">
						              <li class="paginate_button previous"><a href="${pageMaker.startPage -1}">Previous</a>
						              </li>
						            </c:if> <!-- JSTL의 반복문 c:forEach -->
									<c:forEach var="num" begin="${pageMaker.startPage}"
						              end="${pageMaker.endPage}">
						              <li class="paginate_button ${pageMaker.cri.pageNum == num ? 'active':''}"><a href="${num }">${num}</a></li>
						              								  		<!-- 삼항연산자 -->
						            </c:forEach>
									<c:if test="${pageMaker.next}">
						              <li class="paginate_button next"><a href="${pageMaker.endPage +1}">Next</a></li>
						            </c:if>
						          </ul>
						        </div> 
       							<form id='actionForm' action="/board/list" method='get'>
								  <input type='hidden' name='pageNum' value = '${pageMaker.cri.pageNum}'>
								  <input type='hidden' name='amount' value = '${pageMaker.cri.amount}'>
								  <input type="hidden" name="type" value="<c:out value= '${pageMaker.cri.type}'/>">
								  <input type="hidden" name="keyword" value="<c:out value= '${pageMaker.cri.keyword}'/>">
								</form>
       							
							 
							 <!-- Modal -->
                            <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                            <h4 class="modal-title" id="myModalLabel">모달 창 </h4>
                                        </div>
                                        <div class="modal-body">
                                         처리가 완료 되었습니다.
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-default" data-dismiss="modal" id="modalCloseBtn">Close</button>
                                            
                                        </div>
                                    </div>
                                    <!-- /.modal-content -->
                                </div>
                                <!-- /.modal-dialog -->
                            </div>
                            <!-- /.modal -->
							 
							  <div class="col-lg-12 search-wrap">
                <form id='searchForm' action="/board/list" method="get">
                	<select name="type" style="margin-right: 5px;">
                		<option value="" <c:out value="${pageMaker.cri.type == null?'selected':'' }"/>>--</option>
                		<option value="T" <c:out value="${pageMaker.cri.type eq 'T'?'selected':'' }"/>>제목</option>
                		<option value="C" <c:out value="${pageMaker.cri.type eq 'C'?'selected':'' }"/>>내용</option>
                		<option value="W" <c:out value="${pageMaker.cri.type eq 'W'?'selected':'' }"/>>작성자</option>
                		<option value="TC" <c:out value="${pageMaker.cri.type eq 'TC'?'selected':'' }"/>>제목 or 내용</option>
                		<option value="TW" <c:out value="${pageMaker.cri.type eq 'TW'?'selected':'' }"/>>제목 or 작성자</option>
                		<option value="TWC" <c:out value="${pageMaker.cri.type eq 'TWC'?'selected':'' }"/>>제목 or 내용 or 작성자</option>
                	
                	</select>
                	<input type="text" style="margin-right: 5px;" name="keyword" value="<c:out value= '${pageMaker.cri.keyword}'/>">
                	<input type="hidden" name="pageNum" value="<c:out value= '${pageMaker.cri.pageNum}'/>">
                	<input type="hidden" name="amount" value="<c:out value= '${pageMaker.cri.amount}'/>">
                	<button class="btn btn-outline-primary">Search</button>
                
                </form>
                   
                </div>
                <!-- /.col-lg-12 -->
                            </div>
                            <!-- /.table-responsive -->
                           
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>
                </div>
								
<!-- /.col-lg-6 -->
            <!-- /.row -->
      <script type="text/javascript">
		  $(document).ready(function(){
			  
			  var result = '<c:out value="${result}"/>';
			 
			  checkModal(result);
			  
			  history.replaceState({},null,null);
			  
			  function checkModal(result){
				  
				  if(result === ''){
					  return;
				  }
				  if(parseInt(result) > 0){
					  $(".modal-body").html("게시글" + parseInt(result) + " 번이 등록되었습니다.");
				  }
				  
				  $("#myModal").modal("show");
			  }
			  $("#regBtn").on("click",function(){
				  	if($(".js-login a").html()=="Login"){
				  		alert("로그인을 해주세요");
				  		self.location = "/board/list";
				  	}else{
				  		self.location = "/board/register";
				  	}
				  	
			  });
			  
			  var actionForm = $("#actionForm");
			    
			    $(".paginate_button a").on("click", function(e) {
			          
			      e.preventDefault(); //기본 동작 제한   // a태그의 href로 이동하는 것을 중단하는 것.   
			      console.log('click');          
			      //<form>태그의 내용 변경후 submit
			      actionForm.find("input[name='pageNum']").val($(this).attr("href"));
			      			// 태그의 속성선택자              //사용자가 선택한 것 다중선택과 같은 경우에 사용하게 된다. //attr 속성 선택자 - href에 있는 값을 가지고 와라 
			      actionForm.submit();
			});
			     $(".move").on("click", function(e){
			    	
			    	e.preventDefault();
			    	actionForm.append("<input type='hidden' name='bno' value='"+$(this).attr("href")+"'>");
			    	actionForm.attr("action","/board/get");
			    	actionForm.submit();
			    }); 
			     var searchForm = $("#searchForm");
			     
			     $("#searchForm button").on("click", function(e){
			    	 
			    	 if(!searchForm.find("option:selected").val()){
			    		 alert("검색종류를 선택하세요");
			    		 return false;
			    	 }
			    	 
			    	 if(!searchForm.find("input[name='keyword']").val()){
			    		 alert("키워드를 입력하세요");
			    		 return false;
			    	 }
			    	 
			    	 searchForm.find("input[name='pageNum']").val("1");
			    	 e.preventDefault();
			    	 
			    	 searchForm.submit();
			     });
			     // getList
			     
		  });
	 </script>
     <%@include file="../includes/footer.jsp" %>
    