class MoviesController < ApplicationController

  # GET /movies
  def index
    movies = Movie.all
    render json: movies
  end

  # POST /movies
  def create
    # binding.pry
    # byebug
    # movie = Movie.create(movie_params)
    # render json: movie, status: :created

    # Typo example:
    movie = Movi.create(movie_params)
    render json: movie
  end

  private

  def movie_params
    params.permit(:title, :year, :length, :director, :description, :poster_url, :category, :discount, :female_director)
  end
end
