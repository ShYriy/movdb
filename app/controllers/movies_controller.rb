class MoviesController < ApplicationController
  def show
    @movie = Movie.find_by id: params[:id]
  end

  def index
    @movies = Movie.page params[:page]
  end

  def new
    @movie = Movie.new
  end

  def edit
    @movie = Movie.find_by id: params[:id]
  end

  def update
    @movie = Movie.find_by id: params[:id]
    if @movie.update movie_params
      flash[:success] = 'Movie updated!'
      redirect_to movies_path
    else
      render :edit
    end
  end

  def destroy
    @movie = Movie.find_by id: params[:id]
    @movie.destroy
    flash[:success] = 'Movie deleted!'
    redirect_to movies_path
  end

  def create
    @movie = Movie.new movie_params
    if @movie.save
      flash[:success] = 'Movie created!'
      redirect_to movies_path
    else
      render :new
    end
  end

  private

  def movie_params
    params.require(:movie).permit(:title, :text, :ratings, :category)
  end
end
