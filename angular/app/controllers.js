var albumControllers = angular.module('albumControllers', []);

albumControllers.controller('AlbumController', ['$scope', '$http', function($scope, $http) {
  $http.
    get('http://localhost:4567/albums').
    success(function(response) {
      $scope.albums = response
    });

  $scope.orderProp = 'year';
}]);

albumControllers.controller('AlbumEditController', ['$scope', '$routeParams', '$http', function($scope, $routeParams, $http) {
  $http.
    get('data/albums/album_' + $routeParams.albumId + '.json').
    success(function(data) {
      $scope.album = data;
    });

  $scope.submit = function() {
    alert("Form submitted for: " + $scope.album.name)
  }
}]);
