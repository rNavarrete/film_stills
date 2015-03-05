var getColors = function ( url ) {
  var image = new Image( );
  var colors = { };
  image.addEventListener( 'load', function ( ) {
    var result = Colibri.extractImageColors( image, 'css' );
    Object.keys( result ).forEach( function ( key ) {
      colors[ key ] = result[ key ];
    });
  });
  image.crossOrigin = 'Anonymous';
  image.src = url;
  return colors;
}
