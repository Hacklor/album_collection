var musicAlbumsApp = angular.module('musicAlbumsApp', [
  'ngRoute',
  'albumControllers'
]);

musicAlbumsApp.config(['$routeProvider', function($routeProvider) {
  $routeProvider.
    when('/albums', {
      templateUrl: 'views/album-list.html',
      controller: 'AlbumController'
    }).
    when('/albums/:albumId', {
      templateUrl: 'views/album-edit.html',
      controller: 'AlbumEditController'
    }).
    otherwise({
      redirectTo: '/albums'
    });
}]);
