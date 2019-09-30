<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@include file="../includes/header.jsp" %>    
<!DOCTYPE html>
<html>
<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Start Bootstrap - SB Admin Version 2.0 Demo</title>

    <!-- Core CSS - Include with every page -->
    <link href="/resources/css/bootstrap.min.css" rel="stylesheet">
    <link href="/resources/font-awesome/css/font-awesome.css" rel="stylesheet">

    <!-- Page-Level Plugin CSS - Tables -->
    <link href="/resources/css/plugins/dataTables/dataTables.bootstrap.css" rel="stylesheet">

    <!-- SB Admin CSS - Include with every page -->
    <link href="/resources/css/sb-admin.css" rel="stylesheet">
    
    <script type="text/javascript">
    	$(function(){
    		
    		var formObj = $("form");
    		
    		$("button").on("click", function(e) {
				e.preventDefault();
				
				var operation = $(this).data("oper");
				
				console.log(operation);
    			
				if(operation === "remove"){
					formObj.attr("action","/board/remove");
				}else if(operation === "list"){
					formObj.attr("action","/board/list").attr("method","get");
					
					
					var pageNumTag= $("input[name='pageNum']").clone();
					var amountTag = $("input[name='amount']").clone();
					
					formObj.empty();
					formObj.append(pageNumTag);
					formObj.append(amountTag)s;
				}
				formObj.submit();
			});
    	});
    </script>
    
    

</head>
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
                	
                	
                	<form role="form" action="/board/modify" method="post">
                		<div class="form-group">
                			<label>Bno</label><input class="form-control" name="bno" value="<c:out value='${board.bno }'/>" readonly="readonly">
                		</div>
                	
                		<div class="form-group">
                			<label>Title</label><input class="form-control" name="title" value="<c:out value='${board.title }'/>" >
                		</div>
                		<div class="form-group">
                			<label>Text area</label><textarea class="form-control" rows="3" name="content" ><c:out value='${board.content }'/></textarea>
                		</div>
                		<div class="form-group">
                			<label>Writer</label><input class="form-control" name="writer" value="<c:out value='${board.writer }'/>" >
                		</div>
                		<div class="form-group">
                			<label>RegDate</label><input class="form-control" name="regDate" value="<fmt:formatDate pattern="yyyy/MM/dd" value="${board.regdate }"/>" readonly="readonly">
                		</div>
                		<div class="form-group">
                			<label>updateDate</label><input class="form-control" name="updateDate" value="<fmt:formatDate pattern="yyyy/MM/dd" value="${board.updateDate }"/>" readonly="readonly">
                		</div>
                		
                		
                		<input type="hidden" name="pageNum" value="${cri.pageNum }">
                   		<input type="hidden" name="amount" value="${cri.amount }">
                		<button type="submit" data-oper="modify" class="btn btn-default">Modify</button>
                		<button type="submit" data-oper="remove" class="btn btn-danger">Remove</button>
                		<button type="submit" data-oper="list" class="btn btn-info">List</button>
                	</form>
               	</div>
          	</div>
      	</div>
   	</div>
<%@include file="../includes/footer.jsp" %>                      	
</body>
</html>