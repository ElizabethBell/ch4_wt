class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end
  
  def movie_params
    params.require(:movie).permit(:title, :rating, :descripton, :release_date)
  end
  
  def new
    # default: render 'new' template
  end
end