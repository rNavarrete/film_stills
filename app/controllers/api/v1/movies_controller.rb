class Api::V1::MoviesController < BaseController

  def index
   @movies = Movie.by_arrays_of_four
  end
end
