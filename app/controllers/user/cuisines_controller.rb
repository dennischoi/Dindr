class User::CuisinesController < ApplicationController
  def index
    @cuisines = Cuisine.all


    respond_to do |format|
      format.html
      format.js
    end

  end

  def show
    @cuisine = Cuisine.find(params[:id])
  end

  def new
  end

  def create
  end
end
