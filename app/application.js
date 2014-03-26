var todoApp = angular.module('musicAlbumsApp', []);

todoApp.controller('AlbumsController', function($scope, $http) {
  $http.get('data/albums.json').success(function(data) {
    $scope.albums = data
  });

  $scope.orderProp = 'year'
});
