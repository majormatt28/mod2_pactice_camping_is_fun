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

    #redirect_to camper_path(@camper.id)
  end

  def create
    @camper = Camper.create(camper_params)

    redirect_to camper_path(@camper.id)
  end

  def update
    @camper = Camper.find(params[:id])

    @camper.update
  end

  def delete
    @camper = Camper.find(params[:id])

    @camper.destroy
  end

  private

  def camper_params
    params.require[:camper].permit(:name, :age)
  end
end
