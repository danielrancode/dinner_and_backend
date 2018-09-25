class Api::V1::RestaurantsController < ApplicationController
  skip_before_action :authorized, only: [:search]

  DEFAULT_BUSINESS_ID = "yelp-san-francisco"
  DEFAULT_TERM = "dinner"
  DEFAULT_LOCATION = "San Francisco, CA"
  SEARCH_LIMIT = 5

    def search
      response = RestClient::Request.execute(
        method: :get,
        url: "https://api.yelp.com/v3/businesses/search?term=#{params[:term]}&location=#{params[:location]}",
        headers: { Authorization: "Bearer #{ENV["yelp_api_key"]}" }
      )
      data = JSON.parse(response)
      render json: data
    end

    # def index
    #   @restaurants = Restaurant.all
    #   render json: @restaurants
    # end
    #
    # def show
    #   restaurant = Restaurant.find(params[:id])
    #   render json: restaurant
    # end

end
