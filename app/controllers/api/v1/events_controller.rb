class Api::V1::EventsController < ApplicationController

  # def index
  #   events = Event.all
  #   render json: events
  # end

  def show
    event = Event.find(params[:id])
    render json: event
  end

  def index
    response = RestClient::Request.execute(
      method: :get,
      url: 'https://api.seatgeek.com/2/events?lon=-73.9496&lat=40.6501&range=0.6mi&client_id=MTIyNjM2MTd8MTUzMTU4ODc5MC4zOQ',
      headers: {}
    )
    data = JSON.parse(response)
    # @events = Event.all
    # render json: @events
    render json: data
  end

end
