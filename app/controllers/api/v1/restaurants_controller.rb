class Api::V1::RestaurantsController < ApplicationController

  API_KEY = 'dSpOzosE_0tn0aKFycd0FLI230-Xve3W-jZxcpmfCnG7mPxC_-pPUWxj6V0PTHSar0ihkK3UFIdNyew3u_bUPr62UWPWuFpxl7jB2QmtX_V_6SriBkcJTBuFPcpGW3Yx'

  DEFAULT_BUSINESS_ID = "yelp-san-francisco"
  DEFAULT_TERM = "dinner"
  DEFAULT_LOCATION = "San Francisco, CA"
  SEARCH_LIMIT = 5

  # def search(term, location)
  #   url = "#{API_HOST}#{SEARCH_PATH}"
  #   params = {
  #     term: term,
  #     location: location,
  #     limit: SEARCH_LIMIT
  #   }
  #
  #   response = HTTP.auth("Bearer #{API_KEY}").get(url, params: params)
  #   response.parse
  # end

    def index
      response = RestClient::Request.execute(
        method: :get,
        url: 'https://api.yelp.com/v3/businesses/search?term=delis&latitude=37.786882&longitude=-122.399972',
        headers: { Authorization: "Bearer #{API_KEY}" }
      )

      data = JSON.parse(response)
      render json: data
    end

    def show
      restaurant = Restaurant.find(params[:id])
      render json: restaurant
    end


end
