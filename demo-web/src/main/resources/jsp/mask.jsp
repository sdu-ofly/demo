<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>mask</title>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/common/jquery/jquery-3.2.1.min.js"></script>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/demo/loadMask.css">
</head>
<body id="body">
	<div id="red" style="background-color: red;width: 100px;height: 100px;margin: 100px 200px;">
		fsfafasfsaf
	</div>
	<div id="green" style="background-color: green;width: 100px;height: 100px;"></div>
	<div id="blue" style="background-color: blue;width: 100px;height: 100px;"></div>
	<script type="text/javascript" src="<%=request.getContextPath()%>/js/demo/loadMask.js"></script>
	<script type="text/javascript">
		var pre = 'red';
		$('#red,#green,#blue,#body').on("click",function(e) {
			loadMask.remove(pre);	
			loadMask.loading($(this).attr('id'));	
			pre=$(this).attr('id');
			return false; 
		});
		
		
	</script>
	
</body>
</html>