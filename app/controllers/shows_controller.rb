class ShowsController < ApplicationController
  def index
    @shows = Show.all
  end

  def show
    @show = Show.find(params[:id])
  end

  def new
    @show = Show.new
    @venues = Venue.all
    @artists = Artist.all
  end

  def create
    @show = Show.new(show_params)
    if @show.save
      redirect_to @show
    else
      @venues = Venue.all
      @artists = Artist.all
      render 'new'
    end
  end

  def edit
    @show = Show.find(params[:id])
    @venues = Venue.all
    @artists = Artist.all
  end

  def update
    @show = Show.find(params[:id])
    if @show.update(show_params)
      redirect_to @show
    else
      render 'edit'
    end
  end

  private

  def show_params
    params.require(:show).permit(:artist_id, :venue_id, :event_on)
  end
end
