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

</head>
	<div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Board Register</h1>
                </div>
                <!-- /.col-lg-12 -->
    </div>
    <!-- /.row -->
    <div class="row">
        <div class="col-lg-12">
            <div class="panel panel-default">
                <div class="panel-heading">
                    Board Register
                </div>
                <!-- /.panel-heading -->
                <div class="panel-body">
                
                	<form role="form" action="/board/register" method="post">
                		<div class="form-group">
                			<label>Title</label><input class="form-control" name="title">
                		</div>
                		<div class="form-group">
                			<label>Text area</label><textarea class="form-control" rows="3" name="content"></textarea>
                		</div>
                		<div class="form-group">
                			<label>Writer</label><input class="form-control" name="writer">
                		</div>
                		<button type="submit" class="btn btn-default">Submit Button</button>
                		<button type="reset" class="btn btn-default">Reset Button</button>
                	</form>
               	</div>
          	</div>
      	</div>
   	</div>
<%@include file="../includes/footer.jsp" %>                      	
</body>
</html>