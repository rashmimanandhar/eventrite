class CitiesController < ApplicationController
  def index
    @cities = City.all
  end

  def show
    @city = City.find(params[:id])
  end

  def new
    @city = City.new
  end

  def create
    @city = City.new(city_params)
    if @city.save
      flash[:success] = 'Object successfully created'
      redirect_to @city
    else
      flash[:error] = 'Something went wrong'
      render 'new'
    end
  end

  private

  def city_params
    params.require(:city).permit(:name)
  end
end
