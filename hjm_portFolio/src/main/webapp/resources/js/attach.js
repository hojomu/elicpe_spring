/**
 * 
 */
$(document).ready(function(){
	// detail.jsp가 시작되자마자 board_no 값 가져오기
	var board_no=$("input[name='board_no']").val();
	$.getJSON("/attachlist",{board_no:board_no},function(attachlist){
		console.log(attachlist);
		var str="";
		$(attachlist).each(function(i,attach){
			// 만약 image결과가 true면
			if(attach.image){
				var filePath=encodeURIComponent(attach.uploadPath+"/s_"+attach.uuid+"_"+attach.fileName)
				str+="<li><img src='/display?fileName="+filePath+"'></li>"
			}else{
				var filePath=encodeURICOmponent(attach.uploadPath+"/"+attach.uuid+"_"+attach.fileName)
				str+="<li><a href='/download?fileName="+filePath+"'>"+attach.fileName+"</a></li>"
			}
		})
		$("#uploadResult ul").html(str);
	})
})