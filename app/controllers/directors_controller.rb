class DirectorsController < ApplicationController
  def index
    @directors = Director.all
  end

  def show
    @director = Director.find(params[:id])
  end

  def new_form
  end

  def create_row
    @director = Director.new
    @director.dob = params[:dob]
    @director.name = params[:name]
    @director.bio = params[:bio]
    @director.image_url = params[:image_url]

    if @director.save
      flash[:success] = "The director has been succesfully added."
      render("show")
    else
      flash[:danger] = "Please enter a name not yet added to continue."
      render 'new_form'
    end

  end

  def edit_form
    @director = Director.find(params[:id])
  end

  def update_row
    @director = Director.find(params[:id])
    @director.dob = params["the_dob"]
    @director.name = params["the_name"]
    @director.bio = params["the_bio"]
    @director.image_url = params["the_image_url"]

    if @director.save
      flash[:success] = "The director has been succesfully updated."
      render("show")
    else
      flash[:danger] = "Please enter a name not yet added to continue."
      render 'edit_form'
    end

  end

  def destroy
    @director = Director.find(params[:id])
    @director.destroy
  end
end
