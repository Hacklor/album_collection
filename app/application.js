var musicAlbumsApp = angular.module('musicAlbumsApp', []);

musicAlbumsApp.controller('AlbumsController', function($scope, $http) {
  $http.get('data/albums.json').success(function(data) {
    $scope.albums = data
  });

  $scope.orderProp = 'year'
});
