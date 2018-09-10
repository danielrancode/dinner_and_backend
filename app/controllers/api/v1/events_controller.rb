class Api::V1::EventsController < ApplicationController

  def index
    response = RestClient::Request.execute(
      method: :get,
      url: "https://api.seatgeek.com/2/events?lat=#{params[:lat]}&lon=#{params[:lon]}&client_id=MTIyNjM2MTd8MTUzMTU4ODc5MC4zOQ",
      headers: {}
    )
    data = JSON.parse(response)
    # @events = Event.all
    # render json: @events
    render json: data
  end

    # def show
    #   event = Event.find(params[:id])
    #   render json: event
    # end

end
