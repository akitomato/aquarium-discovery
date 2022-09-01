class AquariumsController < ApplicationController
  before_action :authenticate_user!, only: [:new,:edit]
  before_action :set_aquarium, only: [:show, :edit, :update, :destroy]
  def index
    @aquariums =Aquarium.search(params[:keyword])
  end

  def new
    @aquarium = Aquarium.new
  end

  def create
    @aquarium = Aquarium.new(aquarium_params)
    if @aquarium.save
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
    if @aquarium.update(aquarium_params)
      redirect_to aquarium_path
    else
      render :edit
    end
  end

  def destroy
    @aquarium.destroy
    redirect_to root_path
  end

  def search
  end

  private

  def aquarium_params
    params.require(:aquarium).permit(
      :name, :detail, :area_id, :image
    )
  end

  def set_aquarium
    @aquarium = Aquarium.find(params[:id])
  end
end
