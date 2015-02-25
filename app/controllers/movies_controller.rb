class MoviesController < ApplicationController

  def index
    @movie = Movie.all
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new(movie_params)
    if @movie_poster.save
      redirect_to movie_path(@movie_poster)
    else
      redirect_to root_page
    end
  end

  def show
    @movie = Movie.find(params[:id])
  end

  def movie_params 
    params.require(:movie).permit(:title, :poster_image)
  end
end
