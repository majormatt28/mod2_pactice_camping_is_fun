class CampersController < ApplicationController
  def index
    @campers = Camper.all
  end

  def show
    @camper = Camper.find(params[:id])
  end

  def edit
    @camper = Camper.find(params[:id])
  end

  def new
    @camper = Camper.new
  end

  def create
    @camper = Artist.create(camper_params)
  end

  def update
  end

  def delete
  end

  private

  def camper_params
    params.require[:camper].permit(:name, :age)
  end
end
