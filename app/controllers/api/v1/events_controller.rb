class Api::V1::EventsController < ApplicationController
  skip_before_action :authorized, only: [:search]

  def search
    response = RestClient::Request.execute(
      method: :get,
      url: "https://api.seatgeek.com/2/events?lat=#{params[:lat]}&lon=#{params[:lon]}&q=#{params[:q]}&datetime_utc.gt=#{params[:datetime_utc]}&client_id=#{ENV["seatgeek_client_id"]}",
      headers: {}
    )
    data = JSON.parse(response)
    render json: data
  end

  # def index
  #   events = Event.all
  #   render json: events
  # end
  #
  # def show
  #   event = Event.find(params[:id])
  #   render json: event
  # end

end
