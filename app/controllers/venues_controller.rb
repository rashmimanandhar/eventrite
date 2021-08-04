class VenuesController < ApplicationController
  def index
    @venues = Venue.all
  end

  def show
    @venue = Venue.find(params[:id])
  end

  def new
    @venue = Venue.new
    @cities = City.all
  end

  def create
    city_obj = City.find(venue_params['city'])
    @venue = Venue.new(name: venue_params['name'])
    @venue.city = city_obj

    if @venue.save

      redirect_to @venue
    else
      @cities = City.all
      render 'new'
    end
  end

  def edit
    @venue = Venue.find(params[:id])

    @cities = City.all
  end

  def update
    @venue = Venue.find(params[:id])
    city_obj = City.find(venue_params['city'])

    if @venue.update(name: venue_params['name'], city: city_obj)
      redirect_to @venue
    else
      render 'edit'
    end
  end

  private

  def venue_params
    params.require(:venue).permit(:name, :city)
  end
end
