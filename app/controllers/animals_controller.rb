class AnimalsController < ApplicationController
  before_action :authenticate_user!, only: [:new,:edit]
  before_action :set_animal, only: [:show, :edit, :update, :destroy]

  def index
    @animals =Animal.search(params[:keyword])
  end

  def new
    @animal = Animal.new
  end

  def create
    @animal = Animal.new(animal_params)
    if @animal.save
      redirect_to root_path
    else
      render :new
    end

  end

  def show
  end

  def edit
  end

  def update
    if @animal.update(animal_params)
      redirect_to animal_path
    else
      render :edit
    end
  end

  def destroy
    @animal.destroy
    redirect_to root_path
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
