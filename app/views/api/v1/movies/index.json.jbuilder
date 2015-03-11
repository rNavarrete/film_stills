json.movies @movies do |movie|
  json.poster movie.poster_image(:medium)
  json.title movie.title
end
