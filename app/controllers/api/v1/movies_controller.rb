class Api::V1::MoviesController < BaseController

  def index
   @movies = Movie.by_fours
  end
end
