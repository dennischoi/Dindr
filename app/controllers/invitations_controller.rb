class InvitationsController < ApplicationController
  def index
  end

  def show
  end

  def new
    @invitation = Invitation.new
  end

  def create
    @invitation = Invitation.new(invitation_params)

    if @invitation.save
      render :nothing => true
    else
      render :new
    end
  end

  def edit
    @invitation = Invitation.find(params[:id])

  end

  def update
    @invitation = Invitation.find(params[:id])

    if @invitation.update_attributes(accepted_params)
      if request.xhr?
        render nothing: true
      end
    else
      render :edit
    end
  end

  def destroy
  end

  private

  def invitation_params
    params.require(:invitation).permit(:send_user_id, :accept_user_id, :date, :date_cuisine)
  end

  def accepted_params
    params.require(:invitation).permit(:pending)
  end
end
