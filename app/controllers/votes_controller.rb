class VotesController < ApplicationController
  before_action :require_login
  def index
  end

  def new
  end

  def create
    @vote = Vote.new(vote_params)

    if @vote.save
      render nothing: :true
    else
      flash.now[:alert] =  "no vote sent"
    end
  end

  def edit
  end

  def update
  # when request comes in,
  #   fetch vote
  #   fetch picture by id
  #   change vote value to true
  #   confirm vote has been updated
  #   (We don't need to get any info back)
  #   Only send this request when use clicks on NEXT'
  end

  def destroy
    current_user.votes.destroy_all
    render :controller => 'pictures', :action => 'index', :id => current_user.id
  end

  private

  def vote_params
    params.permit(:user_id, :picture_id, :like)
  end

end
