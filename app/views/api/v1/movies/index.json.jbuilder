json.movies @movies do |movie|
  json.title movie.title
  json.poster movie.poster_image(:medium)
  json.imdb_url movie.imdb_url
  json.director movie.director
  json.cast movie.cast
  json.release_date movie.release_date
  json.movie_id movie.movie_id
end
