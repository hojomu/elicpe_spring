/**
 * 
 */

$(document).ready(function(){	// jquery 준비...
	// 함수 호출
	// detail.jsp가 시작되자마자 bno값을 가져올려면 $(document).ready 아래에 선언
	var board_noValue=$("input[name='board_no']").val();
	var pageValue=1;
	// detail.jsp가 시작되자마자 댓글목록리스트(list) 함수를 호출
	list({board_no:board_noValue,page:pageValue});
	
	// 댓글 쓰기버튼을 클릭하면 
	$("#add").on("click",function(){
		// 댓글쓰기 버튼을 클릭했을 당시에 댓글내용을 가져올려면 $("#add").on("click",function(){ 아래에 선언
		var contentValue=$("#replycontents").val();
		// 댓글쓰기를 하기 위한 함수 호출
		add({board_no:board_noValue,content:contentValue});
	})
	// 댓글 수정버튼을 클릭하면
	// 이미 존재하는 태그에 이벤트를 처리하고
	// 나중에 동적으로 생기는 태그들에 대해서 파라미터 형식으로 지정(이벤트 델리게이트)
	$("#chat").on("click",".update",function(){
		// 댓글번호와 댓글내용을 수집해서 
		var rno=$(this).data("rno");
		var content=$("#replycontent"+rno).val();
		
		
		// 댓글수정를 하기 위한 함수 호출(댓글번호, 댓글내용)
		modify({rno:rno,content:content});
	})
	
	// 댓글 삭제버튼을 클릭하면
	$("#chat").on("click",".remove",function(){
		// 댓글번호을 수집해서
		var rno=$(this).data("rno");
		// 댓글삭제를 하기 위한 함수 호출(댓글번호)
		remove({rno:rno,board_no:board_noValue})
		//remove(rno)
		
	})
	$("#replyPage").on("click","li a",function(e){
		alert("aaa")
		e.preventDefault();
		var board_noValue=$("input[name='board_no']").val();
		var pageValue = $(this).attr("href");
		list({board_no:board_noValue,page:pageValue});
	})


})	// jquery 끝...
// 함수 선언
// 댓글 삭제를 하기 위한 함수 선언
function remove(reply){
	$.ajax({
		type:"delete",
		url:"/replies/remove/",
		data:JSON.stringify(reply),
		contentType:"application/json; charset=utf-8",
		success:function(result){
			if(result=="success"){
				alert("댓글삭제 성공")
				list(reply.board_no)
			}
		}
	})
}


// 댓글 수정을 하기 위한 함수 선언
function modify(reply){
	console.log(reply);
	$.ajax({
		type:"put",	// method방식(get, post, put, delete)
		url:"/replies/modify",
		data:JSON.stringify(reply),
		// contentType : ajax -> controller로 데이터 전송 시 타입
		// (contentType을 생략하면 web Brower한테 위임)
		contentType:"application/json; charset=utf-8",
		success:function(result){
			if(result=="success"){
				alert("댓글수정 성공")
			}
		}
	})
}
function list(param){// list함수 선언 시작
	//alert(bno);
	var board_no = param.board_no;
	var page = param.page;
	
	console.log(board_no);
	console.log(page);
	
	$.getJSON("/replies/"+board_no+"/"+page+".json",function(data){
		
		var str="";
		
		for(var i=0;i<data.list.length;i++){
			str+="<li>"
			// 댓글 주인의 프로필 사진을 추가하고 싶다면 이 자리에 태그 추가 할 것
			str+="<div class='reply-detail'>"
			str+="<div class='reply-id'><span>"+data.list[i].id+"</span></div>"
			str+="<div class='reply-content'>"+data.list[i].content+"</div>"
			str+="<div class='reply-btn'>"
			str+="<input class='update btn btn-light' type='button' value='수정' data-rno="+data.list[i].rno+">"
			str+="<input class='remove btn btn-light' type='button' value='삭제' data-rno="+data.list[i].rno+">"
			str+="</div></div></li>"
				
		}
		
		$("#replyUL").html(str);
		
		showReplyPage(data.replycnt,page);
	});
}// list함수 선언 끝
//var pageNum = 1;
function showReplyPage(replycnt,pageNum){
	
	var endNum = Math.ceil(pageNum/10.0)*10;
	var startNum = endNum-9
	
	var prev=startNum !=1;
	var next=false;
	
	if(endNum * 10 >= replycnt){
		endNum = Math.ceil(replycnt/10.0)
	}
	if(endNum * 10 < replycnt){
		next=true;
	}
	var str="<ul>";
	
	if(prev){
		str+="<li><a href='"+(startNum-1)+"'>Previous</a></li>";
	}
	
	for(var i=startNum ; i<=endNum ; i++){
		str+="<li><a href='"+i+"'>"+i+"</a></li>"
	}
	
	if(next){
		str+="<li><a href='"+(endNum+1)+"'>Next</a></li>";
	}
	str+="</ul><div>"
	$("#replyPage").html(str);
		
}

// 댓글 쓰기를 하기 위한 함수 선언
function add(reply){	// add함수 선언 시작
	console.log(reply);
	$.ajax({
		type:"post",	// method방식(get, post, put, delete)
		url:"/replies/new",
		data:JSON.stringify(reply),
		contentType:"application/json; charset=utf-8",
		
		success:function(result){
			if(result=="success"){
				alert("댓글쓰기 성공")
				list(reply.board_no)
			}
		}
	})
}