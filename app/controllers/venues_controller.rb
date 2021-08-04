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
    @venue = Venue.new(venue_params)

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
    if @venue.update(venue_params)
      redirect_to @venue
    else
      render 'edit'
    end
  end

  private

  def venue_params
    params.require(:venue).permit(:name, :city_id)
  end
end
