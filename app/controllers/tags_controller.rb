class TagsController < ApplicationController
  def show
  end

  def new
  end

  def create
  end

  def index
    @tags = Tag.all

    respond_to do |format|
      format.html
      format.js
    end
  end
  
end
