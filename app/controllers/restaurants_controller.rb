class RestaurantsController < ApplicationController

  def index


    #
    # if request.xhr?
    #   params[:category_filter]

    search_options = {
           limit: 5,
           radius_filter: '2000',
           category_filter: params[:category_filter].downcase
         }

    coordinates = { latitude: params[:lat].to_f, longitude: params[:lon].to_f }

    restaurants =
    Yelp.client.search_by_coordinates(coordinates, search_options).businesses

    @restaurant_list = []
    restaurants.each {|restaurant| @restaurant_list << [restaurant.name, restaurant.url]}
    if request.xhr?
      render 'index', layout: false
    end
  end

  def show
  end

end
