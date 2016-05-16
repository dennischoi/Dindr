class RestaurantsController < ApplicationController

  def index
    binding.pry
    @restaurants = Yelp.client.search('Toronto')
  end

  def show
  end

  def search
    parameters = { term: params[:term], limit: 3 }
    @response = Yelp.client.search('Toronto', parameters)

  end
end
