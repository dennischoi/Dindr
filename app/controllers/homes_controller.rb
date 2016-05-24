class HomesController < ApplicationController
  before_action :load_pictures


  def index
    @pictures = Picture.all.limit(12)
  end

  private

  def load_pictures
    @pictures = Picture.all
  end
end
