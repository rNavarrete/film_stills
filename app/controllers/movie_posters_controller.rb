class MoviePostersController < ApplicationController
  respond_to :json

  def index
    @movie_posters = MoviePoster.all
  end

  def new
    @movie_poster = MoviePoster.new
  end

  def create
    @movie_poster = MoviePoster.new(movie_poster_params)
    if @movie_poster.save
      redirect_to movie_poster_path(@movie_poster)
    else
      redirect_to root_page
    end
  end

  def show
    @movie_poster = MoviePoster.find(params[:id])
  end
  
  def movie_poster_params 
    params.require(:movie_poster).permit(:title, :poster_image)
  end
end
