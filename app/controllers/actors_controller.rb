class ActorsController < ApplicationController
  
  def index
    @actors = Actor.all
  end
  
  def show
    id = params[:id]
    @actor = Actor.find(id)
  end
  
  def new
    @actor = Actor.new
  end

  def create
    @actor = Actor.new(actor_params)
    if @actor.save
      flash[:notice] = "#{@actor.name} was successfully created."
      redirect_to actors_path
    else
      # Create failed, re-render the form
      render 'new'
    end
  end
  
  private
  def actor_params
    params.require(:actor).permit(:name, :birthDate, :homeTown)
  end
end
