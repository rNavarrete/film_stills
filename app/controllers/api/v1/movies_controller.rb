class Api::V1::MoviesController < BaseController

  def index
   @movies = Movie.all
  end
end
