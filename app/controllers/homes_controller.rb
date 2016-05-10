class HomesController < ApplicationController
  before_action :load_pictures


  def index
    array = @pictures.pluck(:id).shuffle.first(3)

    @picture1 = Picture.find_by(id: array[0])
    @picture2 = Picture.find_by(id: array[1])
    @picture3 = Picture.find_by(id: array[2])
  end

  private

  def load_pictures
    @pictures = Picture.all
  end
end
