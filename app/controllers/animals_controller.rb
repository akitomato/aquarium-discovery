class AnimalsController < ApplicationController
  before_action :authenticate_user!, only: [:new,:edit]
  before_action :set_animal, only: [:show,:edit]

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
      :name, :detail, :category_id, :image,
    ).merge(aquarium_ids: params[:aquarium_ids])
  end

  def set_animal
    @animal = Animal.find(params[:id])
  end

end
