class VotesController < ApplicationController
  def index
  end

  def new
  end

  def create
    @vote = Vote.new(vote_params)

    if @vote.save

    else
      flash.now[:error] = ""
    end


  end




  def edit
  end

  def update
  # when request comes in,
  #   fetch vote
  #   fetch picture by id
  # params hash to whatever we called the datad
  #   change vote value to true
  #   confirm vote has been updated
  #   (We don't need to get any info back)
  #   Only send this request when use clicks on NEXT'
  end

  private

  def vote_params
    params.permit(:picture_id, :user_id, :like)
  end

end
