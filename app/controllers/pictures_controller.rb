class PicturesController < ApplicationController
  def index
    @pictures = Picture.all
    
    array = @pictures.pluck(:id).shuffle.first(3)

    @picture1 = Picture.find_by(id: array[0])
    @picture2 = Picture.find_by(id: array[1])
    @picture3 = Picture.find_by(id: array[2])

    respond_to do |format|
      format.html
      format.js
    end
  end

  def new
  end

  def create
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
