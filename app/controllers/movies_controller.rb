class MoviesController < ApplicationController
  def index
    if params[:query].present?
      @movies = Movie.global_search(params[:query]).page(params[:page]).per(2)
    else
      @movies = Movie.page(params[:page]).per(2)
    end
  end

  def show
    @movie = Movie.find(params[:id])
  end
end
