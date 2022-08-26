class AquariumsController < ApplicationController
  def index
    @aquariums =Aquarium.search(params[:keyword])
  end

  def new
    @aquarium = Aquarium.new
  end

  def create
    @aquarium = Aquarium.new(aquarium_params)
    @aquarium.save
    redirect_to root_path
  end

  def show
  end

  def edit
  end

  def search
  end

  private

  def aquarium_params
    params.require(:aquarium).permit(
      :name, :detail, :area_id, :image
    )
  end
end
