class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end

  def show
    @movie = Movie.find(params[:id])
  end

  def new_form
  end

  def create_row
    @movie = Movie.new
    @movie.title = params[:title]
    @movie.year = params[:year]
    @movie.duration = params[:duration]
    @movie.description = params[:description]
    @movie.image_url = params[:image_url]

    if @movie.save
      flash[:success] = "Your movie has been succesfully added."
      render("show")
    else
      flash[:danger] = "Please enter a title not yet added to continue."
      render 'new_form'
    end
  end

  def edit_form
    @movie = Movie.find(params[:id])
  end

  def update_row
    @movie = Movie.find(params[:id])
    @movie.title = params[:title]
    @movie.year = params[:year]
    @movie.duration = params[:duration]
    @movie.description = params[:description]
    @movie.image_url = params[:image_url]
    if @movie.save
      flash[:success] = "Your movie has been succesfully updated."
      render("show")
    else
      flash[:danger] = "Please enter a title not yet added to continue."
      render 'edit_form'
    end
  end

  def destroy
    @movie = Movie.find(params[:id])
    @movie.destroy
  end
end
