class RestaurantsController < ApplicationController

  def index
    # @restaurants = Yelp.client.search('Toronto')
  end

  def show
  end

  def search
    parameters = { term: params[:term], limit: 3 }
    @response = Yelp.client.search('Toronto', parameters)
    client.search('San Francisco')

  end
end
