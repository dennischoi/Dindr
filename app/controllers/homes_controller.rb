class HomesController < ApplicationController
  before_action :load_pictures


  def index
    array_all = @pictures.pluck(:id).shuffle
    array = @pictures.pluck(:id).shuffle.first(3)

    e = array_all.to_enum

    @picture1 = Picture.find_by(id: array[0])
    @picture2 = Picture.find_by(id: array[1])
    @picture3 = Picture.find_by(id: array[2])

    respond_to do |format|
      format.html
      format.js
    end
  end

  private

  def load_pictures
    @pictures = Picture.all
  end
end
