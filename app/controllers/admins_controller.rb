class AdminsController < ApplicationController

before_action :check_admin, :load_pictures

  def index
    @pictures = Picture.all
  end

  def show
  end

  def new
    @picture = Picture.new
    @cuisines = Cuisine.all
    @tags = Tag.all
  end

  def create
    @picture = Picture.new(picture_params)
    if @picture.save
      redirect_to admins_path

    else
      render :new
    end
  end

  def edit
  end

  def update
  end


  def destroy
  end

  private

  def load_pictures
    @pictures = Picture.all
  end

  def check_admin
    unless admin?
      redirect_to :homes
    end
  end

  def picture_params
    (params).require(:picture).permit(:content, :category_id, :tags_attributes [:tag_id])
  end


end
