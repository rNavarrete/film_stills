angular.module( 'app', [ 'ngResource' ] )
            .factory( 'imgur', function ( $http ) {
                return function ( ) {
                    return $http.get( '/api/v1/movies');
                };
            } )
            .factory( 'colibri', function ( $rootScope ) {
                return function ( url ) {
                    var image = new Image( ), colors = { };
                    image.addEventListener( 'load', function ( ) {
                        $rootScope.$apply( function ( ) {
                            var result = Colibri.extractImageColors( image, 'css' );
                            Object.keys( result ).forEach( function ( key ) {
                                colors[ key ] = result[ key ];
                            } );
                        } );
                    } );
                    image.crossOrigin = 'Anonymous';
                    image.src = url;
                    return colors;
                };
            } )
            .controller( 'main', function ( $scope, imgur, colibri ) {
                imgur( ).then( function ( xhr ) {
                  console.log(xhr);
                    $scope.albums = xhr.data.data.map( function ( entry ) {
                        var index = entry.link.lastIndexOf( '.' );
                        var cover = entry.link.substr( 0, index ) + 'b' + entry.link.substr( index );
                        return { name : entry.title, cover : cover, colors : colibri( cover ), tracks : [
                            'All the Wrong Places',
                            'Changed the Way You Kiss Me',
                            'Close Enemies',
                            'Come Taste The Rainbow',
                            'Crying Out For Help',
                            'Kickstarts',
                            'Last Ones Standing',
                            'Microphone',
                            'Midnight Run',
                            'Millionaires',
                            'Natural Disaster'
                        ] };
                    } );
                } );
            } );
