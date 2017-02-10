<%@include file="../common/common.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="${ctx}/js/angular.js"></script>
<title>AngularJSTest</title>
</head>
<body ng-app="index">
	<div ng-controller="customersCtrl">
		<table border='1'>
			<tr>
				<th>id</th>
				<th>状态</th>
				<th>名字</th>
				<th><button ng-click="addUser()">add</button></th>
			</tr>
			<tr ng-repeat="x in users">
				<td>{{ x.id }}</td>
				<td>{{ x.state }}</td>
				<td>{{ x.nickname }}</td>
				<td><button ng-click="getUser(x)">modify</button>
					<button ng-click="deleteUser()">delete</button></td>
			</tr>
		</table>
		<table>
			<tr>
				<td>id</td><td><input name="user.id" ng-model="modifyUser.id"/></td>
			</tr>
			<tr>
				<td>state</td><td><input name="user.state" ng-model="modifyUser.state"/></td>
			</tr>
			<tr>
				<td>nickname</td><td><input name="user.nickname" ng-model="modifyUser.nickname"/></td>
			</tr>
			<tr>
				<td><button ng-click="updateUser()">submit</button></td>
			</tr>
		</table>

	</div>

	<script>
		var app = angular.module('index', []);
		app.controller('customersCtrl', function($scope, $http) {
			var listUser_url = 'http://localhost:8080/hpeTemplate/listUser.do';
			var getUser_url = 'http://localhost:8080/hpeTemplate/getUser.do';
			var update_url = 'http://localhost:8080/hpeTemplate/updateUser.do';
			function fetchAllUsers() {
				$http.get(listUser_url).success(function(data) {
					$scope.users = data;
				})
			}
			fetchAllUsers();
			$scope.getUser = function getUser(user) {
				$http({
                    method: "POST",
                    url: getUser_url,
                    data: user
                }).success(function (data, status){
                	console.info(data);
                	$scope.modifyUser = data;
                })
			}
			$scope.updateUser = function updateUser() {
				$http({
                    method: "POST",
                    url: update_url,
                    data: $scope.modifyUser
                }).success(function (data, status){
                	alert('add successful');
                	fetchAllUsers();
                })
			}
		})
	</script>
</body>
</html>