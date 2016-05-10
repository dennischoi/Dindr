class AdminsController < ApplicationController

before_action :check_admin, :load_pictures

  def index
    @pictures = Picture.all
  end

  def show
  end

  def new
  end

  def create
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


end
