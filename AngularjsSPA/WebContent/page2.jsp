<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
<title>Insert title here</title>
</head>
<body>
<div ng-app="myapp" ng-controller="myctrl">
{{welcome}}
</div>
<script>
var app=angular.module('myapp',[]);
app.controller('myctrl',function($scope,$http){
	
	$http.get("page3.jsp").then(function(response){
		
		$scope.welcome=response.data;
		
	});
	
	
	
});
</script>
</body>
</html>