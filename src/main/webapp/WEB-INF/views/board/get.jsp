<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ include file="../includes/header.jsp" %>
     <style>
.uploadResult {
  width:100%;
  background-color: gray;
}
.uploadResult ul{
  display:flex;
  flex-flow: row;
  justify-content: center;
  align-items: center;
}
.uploadResult ul li {
  list-style: none;
  padding: 10px;
  align-content: center;
  text-align: center;
}
.uploadResult ul li img{
  width: 100px;
}
.uploadResult ul li span {
  color:white;
}
.bigPictureWrapper {
  position: absolute;
  display: none;
  justify-content: center;
  align-items: center;
  top:0%;
  width:100%;
  height:100%;
  background-color: gray; 
  z-index: 100;
  background:rgba(255,255,255,0.5);
}
.bigPicture {
  position: relative;
  display:flex;
  justify-content: center;
  align-items: center;
}

.bigPicture img {
  width:600px;
}
.btn-wrap{
	display:flex;
	justify-content: flex-end;
	padding:20px;
}
.btn-wrap button{
	margin-right: 10px;

}
.reply-panel .panel-heading{
	border-top:1px solid black;
}
							
</style>
	<div class="board-wrap">    
		<div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Board Read</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Board Read Page
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                        
                     
                        <div class="form-group">
                        		<label>번호</label> 
                        		<input class="form-control" name='bno'
                        		value='<c:out value="${board.bno }"/>' readonly="readonly">
                        	</div>
                        
                        
                        	<div class="form-group">
                        		<label>Title</label> 
                        		<input class="form-control" name='title'
                        		value='<c:out value="${board.title }"/>' readonly="readonly">
                        	</div>
                        	
                        	<div class="form-group">
                        		<label>Content</label> 
                        		<textarea class="form-control" rows="3" name='content'  readonly="readonly"><c:out value="${board.content}"/></textarea>
                        	</div>
                        	
                        	
                        	<div class="form=group">
                        		<label>Writer</label> 
                        		<input class="form-control" name='writer'
                        		value='<c:out value="${board.writer }"/>' readonly="readonly">
                        	</div>
                        	<c:catch>
                        	<c:choose>
           					<c:when test="${board.writer == login.nickname}">
                        	<div class="btn-wrap">
                        	<button data-oper="modify" class="btn btn-outline-success">Modify</button>
                        	
                        	
                        	<button data-oper="list" class="btn btn-outline-info" >List</button>
                        	</div>
                        	</c:when>
                        	 <c:otherwise>
                        	 <div class="btn-wrap">
                        	 <button data-oper="list" class="btn btn-outline-info" >List</button>
                        	 </div>
                        	  </c:otherwise>
          				 </c:choose>
          					 </c:catch>
                        	
                        
                        
                        
                        <form id='operForm' action="/board/modify" method= "get">
                        	<input type='hidden' id='bno' name='bno' value='<c:out value="${board.bno}"/>'>
                        	<input type='hidden' name='pageNum' value='<c:out value="${cri.pageNum}"/>'>
 							<input type='hidden' name='amount' value='<c:out value="${cri.amount}"/>'>
 							<input type="hidden" name="type" value="<c:out value= '${pageMaker.cri.type}'/>">
							<input type="hidden" name="keyword" value="<c:out value= '${pageMaker.cri.keyword}'/>">
                        </form>
                        
                        
                        </div>
                        </div>
                        </div>
                        </div>
                        <!-- bigpicture -->
							<div class='bigPictureWrapper'>
							  <div class='bigPicture'>
							  </div>
							</div>
							
				
							
							
							
							
							
							
                        <div class='row'>
                        	 <div class="col-lg-12">
                   				 <div class="panel panel-default reply-panel">
                        			<div class="panel-heading">
                            			Reply <button id='addReplyBtn' class='btn btn-primary btn-xs pull-right'>NewReply</button>
                        			</div>
                        <!-- /.panel-heading -->
                        	<div class="panel-body">
                        	<ul class="chat">
                        		<li class="left clearfix" data-rno='12'>
                        			<div>
                        				<div class="header">
                        					<strong class="primary-font"></strong>
                        					<small  class="pull-right text-muted"></small>
                        				</div>
                        				<p></p>
                        			</div>
                        		</li>
                        	</ul>
                        
                        
                        </div>
                        <!-- end chat-panel -->
                        
                        <!-- panel-footer -->
                        <div class="panel-footer"></div>
                        
                        </div>
                        </div>
                        </div>
                          </div>
                        <!--  댓글 Modal -->
                            <div class="modal" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                            <h4 class="modal-title" id="myModalLabel">댓글 modal</h4>
                                        </div>
                                        <div class="modal-body">
                                        	<div class="form-group">
                                        		<label>Reply</label>
                                        		<input class="form-control" name='reply' value="New Reply!!!!">
                                        	</div>
                                        	<div class="form-group">
                                        		<label>Replyer</label>
                                        		<input class="form-control" name='replyer' value="${login.nickname}" readonly="readonly" >
                                        	</div>
                                        	<div class="form-group">
                                        		<label>Reply Date</label>
                                        		<input class="form-control" name='replyDate' value="">
                                        	</div>
                                           
                                        </div>
                                        	
                                        <div class="modal-footer">
										
                                        	<button id='modalModBtn' type="button"  class="btn btn-warning">Modify</button>
                                        	<button id='modalRemoveBtn' type="button"   class="btn btn-danger">Remove</button>
                                        	<button id='modalRegisterBtn' type="button" class="btn btn-primary">Register</button>
                                            <button id='modalCloseBtn' type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                           
                                        </div>
                                    </div>
                                    <!-- /.modal-content -->
                                </div>
                                <!-- /.modal-dialog -->
                            </div>
                            <!-- /.modal -->
                      
                        <!-- 자바스크립트 이벤트 처리 -->
                        <script type="text/javascript" src="/resources/js/reply.js"></script>
                        <script>
 								
							$(document).ready(function(){	
								
								
								 if($(".js-login a").html()=="Login"){
									
							  		/* $(".btn-wrap").hide(); */
							  		$("#addReplyBtn").hide();
								}else{
									$(".btn-wrap").show();
							  		$("#addReplyBtn").show();
								};
								
								var bnoValue = '<c:out value="${board.bno}"/>';
								var replyUL = $(".chat"); /* chat이라는 클래스 선택 */
								
									showList(1);
								
								function showList(page){
									
								    	console.log("show list : " + page);  
								      replyService.getList({bno:bnoValue,page: page|| 1 }, function(replyCnt,list) { //여기 list가 list배열로 각각 다 들어가게 된다!
								    	  
								    	  if(page == -1){
								    		  pageNum = Math.ceil(replyCnt/10.0);
								    		  showList(pageNum);
								    		  return
								    	  }
								        
								        var str="";
								       if(list == null || list.length == 0){
								        
								       // replyUL.html(""); //.html을 하게 되면 html태그를 수정할 수 있다. 
								        
								        return;
								      }
								        for (var i = 0, len = list.length || 0; i < len; i++) {
								          str +="<li class='left clearfix' data-rno='"+list[i].rno+"'>";
								          str +="  <div><div class='header'><strong class='primary-font'>"+list[i].replyer+"</strong>"; 
								          str +="    <small class='pull-right text-muted'>"+replyService.displayTime(list[i].replyDate)+"</small></div>";
								          str +="    <p>"+list[i].reply+"</p></div></li>";
								        }
								 
								    replyUL.html(str);
								
									showReplyPage(replyCnt);
								 
								      });//end function
								      
								   }//end showList
								  
								var pageNum = 1;
							    var replyPageFooter = $(".panel-footer");
							    
							    function showReplyPage(replyCnt){
							      
							      var endNum = Math.ceil(pageNum / 10.0) * 10;  
							      var startNum = endNum - 9; 
							      
							      var prev = startNum != 1;
							      var next = false;
							      
							      if(endNum * 10 >= replyCnt){
							        endNum = Math.ceil(replyCnt/10.0);
							      }
							      
							      if(endNum * 10 < replyCnt){
							        next = true;
							      }
							      
							      var str = "<ul class='pagination pull-right'>";
							      
							      if(prev){
							        str+= "<li class='page-item'><a class='page-link' href='"+(startNum -1)+"'>Previous</a></li>";
							      }
							      
							      for(var i = startNum ; i <= endNum; i++){
							        
							        var active = pageNum == i? "active":"";
							        
							        str+= "<li class='page-item "+active+" '><a class='page-link' href='"+i+"'>"+i+"</a></li>";
							      }
							      
							      if(next){
							        str+= "<li class='page-item'><a class='page-link' href='"+(endNum + 1)+"'>Next</a></li>";
							      }
							      
							      str += "</ul></div>";
							      
							      console.log(str);
							      
							      replyPageFooter.html(str);
							    }
							     
							    replyPageFooter.on("click","li a", function(e){
							       e.preventDefault();
							       console.log("page click");
							       
							       var targetPageNum = $(this).attr("href");
							       
							       console.log("targetPageNum: " + targetPageNum);
							       
							       pageNum = targetPageNum;
							       
							       showList(pageNum);
							     });     
							    
								   var modal = $(".modal");
								   var modalInputReply = modal.find("input[name='reply']");
								   var modalInputReplyer = modal.find("input[name='replyer']");
								   var modalInputReplyDate = modal.find("input[name='replyDate']");
								   
								   var modalModBtn = $("#modalModBtn");
								   var modalRemoveBtn = $("#modalRemoveBtn");
								   var modalRegisterBtn = $("#modalRegisterBtn");
								   
								   $("#addReplyBtn").on("click", function(e){
									   
									   modal.find("input[name='reply']").val("");
									   modal.find("input[name='replyDate']").val("");
									   modal.find("input[name='replyer']").val("${login.nickname}");
									   modalInputReplyDate.closest("div").hide();
									   modal.find("button[id !='modalCloseBtn']").hide(); // id 값이 modalCloseBtn이 아닌 것을 숨겨라
									   modalRegisterBtn.show();
									   $(".modal").modal("show");
								   });
								 
								   $(".chat").on("click", "li", function(e){
										
										var rno = $(this).data("rno");
										var nickname = "<c:out value="${login.nickname }"/>";
										replyService.get(rno, function(reply){
											
											modalInputReply.val(reply.reply);
											modalInputReplyer.val(reply.replyer);
									        modalInputReplyDate.val(replyService.displayTime( reply.replyDate)).attr("readonly","readonly");
									        modal.data("rno", reply.rno);
									        
									        modal.find("button[id !='modalCloseBtn']").hide();
									        if(reply.replyer== nickname){
									        modalModBtn.show();
									        modalRemoveBtn.show();
									        }
									        $(".modal").modal("show");

										});
										
									});
								  /*  modalModBtn.on("click", function(e){
									      
									      var reply = {rno:modal.data("rno"), reply: modalInputReply.val()};
									      
									      replyService.update(reply, function(result){
									            
									        alert(result);
									        modal.modal("hide");
									        showList(1);
									        
									      });
									      
									    });
								   modalRemoveBtn.on("click", function (e){
									   
									   var rno = modal.data("rno");
									   
									   replyService.remove(rno, function(result){
										   
										   
										   alert(result);
										   modal.modal("hide");
										   showList(1);
									   });
								   }); */
								   modalModBtn.on("click", function(e){
								    	  
									   	  var reply = {rno:modal.data("rno"), reply: modalInputReply.val()};
									   	  
									   	  replyService.update(reply, function(result){
									   	        
									   	    alert(result);
									   	    modal.modal("hide");
									   	    showList(pageNum);
									   	    
									   	  });
									   	  
									   	});


									   	modalRemoveBtn.on("click", function (e){
									   	  
									   	  var rno = modal.data("rno");
									   	  
									   	  replyService.remove(rno, function(result){
									   	        
									   	      alert(result);
									   	      modal.modal("hide");
									   	      showList(pageNum);
									   	      
									   	  });
									   	  
									   	});
									    modalRegisterBtn.on("click",function(e){
										      
										      var reply = {
										            reply: modalInputReply.val(),
										            replyer:modalInputReplyer.val(),
										            bno:bnoValue
										          };
										      replyService.add(reply, function(result){
										        
										        alert(result);
										        
										        modal.find("input").val("");
										        modal.modal("hide");
										        
										        showList(-1);
										      });
									   });

									 
									});
						
							
							
								
								 
						</script> 
                        
                       <script type="text/javascript">
							$(document).ready(function(){
									
								var operForm = $("#operForm");
								
								$("button[data-oper='modify']").on("click",function(e){
									
									operForm.attr("action","/board/modify").submit();
									
								});
								
								$("button[data-oper='list']").on("click",function(e){
									
									operForm.find("#bno").remove();
									operForm.attr("action","/board/list")
									operForm.submit();
								});
								});					
						</script>
						<script>


							
							
							</script>
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        <%@include file="../includes/footer.jsp" %>
                         