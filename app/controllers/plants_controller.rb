class PlantsController < ApplicationController
  def index
    plants = Plant.all
    render json: plants
  end

  def create
    plant = Plant.create(name: params[:name], image: params[:image], price: params[:price])
    render json: plant, status: :created
  end

  def show
    plant = Plant.find_by(id: params[:id])
    if plant
      render json: plant
    else
      render json: { error: "Plant not found" }, status: :not_found
    end
  end

  private

  def method_name
    plant = Plant.create(params.permit(:name, :image, :price))
    render json: plant, status: :created
  end
end
