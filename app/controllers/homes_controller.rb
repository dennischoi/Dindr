class HomesController < ApplicationController
  before_action :load_pictures


  def index
  
  end

  private

  def load_pictures
    @pictures = Picture.all
  end
end
