class PicturesController < ApplicationController
  before_action :require_login

  def index
    # @pictures = Picture.order_by_rand.all

    # array2 = @pictures.includes(:votes).where( :votes => { :user_id => nil })
    #
    # array1 = @pictures.includes(:votes).where.not( :votes => { :user_id => current_user.id })
    #
    # array = array1.concat(array2)
    # array.uniq!
    votes_array = current_user.votes.pluck(:picture_id)
    @pictures = Picture.order_by_rand.where.not(id: votes_array)

    @picture1 = @pictures[0]
    @picture2 = @pictures[1]
    @picture3 = @pictures[2]


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
