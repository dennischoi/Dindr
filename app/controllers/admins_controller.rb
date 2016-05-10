class AdminsController < ApplicationController

before_action :is_admin?

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

end
