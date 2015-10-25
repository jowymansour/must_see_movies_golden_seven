class ActorsController < ApplicationController
  def index
    @actors = Actor.all
  end

  def show
    @actor = Actor.find(params[:id])
  end

  def new_form
  end

  def create_row
    @actor = Actor.new
    @actor.dob = params[:dob]
    @actor.name = params[:name]
    @actor.bio = params[:bio]
    @actor.image_url = params[:image_url]

    if @actor.save
      flash[:success] = "The actor has been succesfully added."
      render("show")
    else
      flash[:danger] = "Please enter a name not yet added to continue."
      render 'new_form'
    end
  end

  def edit_form
    @actor = Actor.find(params[:id])
  end

  def update_row
    @actor = Actor.find(params[:id])

    @actor.dob = params[:dob]
    @actor.name = params[:name]
    @actor.bio = params[:bio]
    @actor.image_url = params[:image_url]

    if @actor.save
      flash[:success] = "The actor has been succesfully updated."
      render("show")
    else
      flash[:danger] = "Please enter a name not yet added to continue."
      render 'edit_form'
    end
  end

  def destroy
    @actor = Actor.find(params[:id])

    @actor.destroy
  end
end
