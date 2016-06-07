class RestaurantsController < ApplicationController
  before_action :require_login

  def index


    search_options = {
           limit: 6,
           radius_filter: '2000',
           category_filter: params[:category_filter].downcase
         }

    @coordinates = { latitude: params[:lat].to_f, longitude: params[:lon].to_f }

    restaurants =
    Yelp.client.search_by_coordinates(@coordinates, search_options).businesses

    @restaurant_list = []
    restaurants.each {|restaurant| @restaurant_list << [restaurant.name, restaurant.url, restaurant.location.coordinate.latitude, restaurant.location.coordinate.longitude, restaurant.rating, restaurant.location.display_address]}


    respond_to do |format|
      format.js
      format.html
    end

  end
end
