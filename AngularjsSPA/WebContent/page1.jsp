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
<div ng-app="myapp" ng-controller="ctrl">
<table>
<thead>
<th ng-click="fun('name')">
Name
</th>
<th ng-click="fun('country')">
Country
</th>
</thead>

<tr ng-repeat="x in ar | orderBy:val">
<td>{{x.name}}</td><td>{{x.country}}</td>
</tr>

</table>
</div>
<script>
var app = angular.module('myapp',[]);
app.controller('ctrl',function($scope){
	
	$scope.ar=[ {name:'Jani',country:'Norway'},
        {name:'Carl',country:'Sweden'},
        {name:'Margareth',country:'England'},
        {name:'Hege',country:'Norway'},
        {name:'Joe',country:'Denmark'},
        {name:'Gustav',country:'Sweden'},
        {name:'Birgit',country:'Denmark'},
        {name:'Mary',country:'England'},
        {name:'Kai',country:'Norway'}];
	
	
	$scope.fun=function(x){
		
		$scope.val=x;
		
		
	};
	
});
</script>
</body>
</html>