class RestaurantsController < ApplicationController

  def index


    #
    # if request.xhr?
    #   params[:category_filter]

    search_options = {
           limit: 5,
           category_filter: 'mexican',
           radius_filter: '2000'
          #  category_filter: params[:category_filter].downcase
         }

    # else
    #   flash.now[:alert] = "The fuck"
    # end

    # bounding_box = { sw_latitude: 43.647303, sw_longitude: -79.393374, ne_latitude: 43.656440, ne_longitude: -79.376840 }

    # coordinates = { latitude: 43.647, longitude: -79.387 }


    coordinates = { latitude: params[:lat].to_f, longitude: params[:lon].to_f }
    # {:latitude=>43.6470858, :longitude=>-79.3871813}


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
