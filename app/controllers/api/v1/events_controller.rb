class Api::V1::EventsController < ApplicationController

  def search
    response = RestClient::Request.execute(
      method: :get,
      url: "https://api.seatgeek.com/2/events?lat=#{params[:lat]}&lon=#{params[:lon]}&client_id=MTIyNjM2MTd8MTUzMTU4ODc5MC4zOQ",
      headers: {}
    )
    data = JSON.parse(response)
    render json: data
  end

  def index
    events = Event.all
    render json: events
  end

  def show
    event = Event.find(params[:id])
    render json: event
  end

end
