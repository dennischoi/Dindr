class RestaurantsController < ApplicationController

  def index


    search_options = {
           limit: 2,
           category_filter: 'mexican',
         }

    bounding_box = { sw_latitude: 43.647303, sw_longitude: -79.393374, ne_latitude: 43.656440, ne_longitude: -79.376840 }


    restaurants = Yelp.client.search_by_bounding_box(bounding_box, search_options).businesses

    @restaurant_list = []
    restaurants.each {|restaurant| @restaurant_list << [restaurant.name, restaurant.url]}
  end

  def show
  end

end
