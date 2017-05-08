<%@page import="java.io.File"%>
<%@page import="com.app.release.T24DevHelper"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>release management</title>

<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css" />
<script src="bootstrap/js/bootstrap.min.js"></script>
<link href="css/dashboard.css" rel="stylesheet" />
<style type="text/css" >
body {
	background-color: #ffffff;
	margin:80px 80px 100px 100px;
}
div#fixedheader {
	position:fixed;
	top:0px;
	left:0px;
	width:100%;
	color:#ffffff;
	background:#a6a6a6;
	padding:20px;
	font-size: 20px;
	text-align: center;
}
div#fixedfooter {
	position:fixed;
	bottom:0px;
	left:0px;
	width:100%;
	color:#ffffff;
	background:#a6a6a6;
	padding:8px;
}
</style>
</head>
<body>


<div id="fixedheader">Release Management</div>
 
<div >
            <table >

		<thead style="font-style: oblique; font-size: 18px;">
			<tr>
				<td>Sl. No</td>
				<td>Release Name</td>
			</tr>
		</thead>
		<tbody>
			<%
String devLocation = "E:\\My projects\\bootstrap-login-forms\\form-1\\assets\\bootstrap";

List<File> list = T24DevHelper.listFiles(devLocation);
int v =1;
for(int i=0; i< list.size(); i++){
	if(list.get(i).isFile()){
	%>
			<tr>
				<td><%=v%></td>
				<td><%= list.get(i).getAbsolutePath().replace(devLocation, "") %></td>
			</tr>
			<%
	v++;
	}
}
%>
		</tbody>
	</table>
</div>

  
 
<div id="fixedfooter">Copyright @Appistoki pvt ltd</div>
</body>
</html>