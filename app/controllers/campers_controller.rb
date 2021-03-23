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
  end

  def delete
    @camper = Camper.create(camper_params)

    @camper.destroy

    redirect_to camper_path(@camper.id)
  end

  private

  def camper_params
    params.require[:camper].permit(:name, :age)
  end
end
