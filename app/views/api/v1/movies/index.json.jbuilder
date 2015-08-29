require "prime"

@counter = 0
@last_truth = 0

def first(counter)
  if counter == 0
    true
  elsif counter % 4 == 0
    @last_truth = counter
    true
  else
    false
  end
end

def last(counter, movie)
  if counter == 3
    @last_truth == 3
    true
  elsif @last_truth + 3 == @counter
    @last_counter = @counter
    true
  elsif
    Movie.all.last == movie
    true
  else
    false
  end
end

@movies.each do |array_of_four|
  json.movies array_of_four do |movie|
    json.title movie.title
    json.poster movie.poster_image(:medium)
    json.imdb_url movie.imdb_url
    json.director movie.director
    json.cast movie.cast
    json.release_date movie.release_date
    json.movie_id movie.movie_id
    json.first first(@counter)
    json.last last(@counter, movie)
    @counter += 1
  end
end

