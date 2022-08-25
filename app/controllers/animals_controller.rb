class AnimalsController < ApplicationController
  def index
    @animals =Animal.search(params[:keyword])
  end

  def new
    @animal = Animal.new
  end

  def create
    @animal = Animal.new(animal_params)
    @animal.save
    redirect_to root_path
  end

  def show
  end

  def edit
  end

  def search
  end

  private

  def animal_params
    params.require(:animal).permit(
      :name, :detail, :category_id, :image
    ).merge(aquarium_id: params[:aquarium_id])
  end

end
