class MoviesController < ApplicationController

  def index
    @movies = Movie.all
  end

  def new
    @movie = Movie.new
  end

  def create
    movie = Movie.new(movie_params)
    if movie.save
      redirect_to movie_path(movie)
    else
      redirect_to root_page
    end
  end

  def show
    @movie = Movie.find(params[:id])
  end

  def movie_params 
    params.require(:movie).permit(:title, :poster_image, :director, :release_date)
  end
end
