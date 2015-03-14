require "prime"

@counter = 0
@last_truth = 0


def first(counter)
  if counter == 0
    true
  elsif counter % 4 == 0
    true
  else
    false
  end
end

def last(counter)
  if counter == 3
    @last_truth == 3
    true
  elsif @last_truth + 4 == @counter
    false
  else
    false
  end
end



json.movies @movies do |movie|
  json.title movie.title
  json.poster movie.poster_image(:medium)
  json.imdb_url movie.imdb_url
  json.director movie.director
  json.cast movie.cast
  json.release_date movie.release_date
  json.movie_id movie.movie_id
  json.first first(@counter)
  json.last last(@counter)
  @counter += 1
end

