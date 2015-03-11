json.movies @movies do |movie|
  json.poster movie.poster_image
  json.title movie.title
end
