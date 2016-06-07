class InvitationsController < ApplicationController
  def index
    sent_invites = current_user.sent_invitations
    accept_invites = current_user.accepted_invitations

    all_invites = sent_invites + accept_invites

    @matched_invites = []

    all_invites.each do |inv|
      if inv.pending == false
        @matched_invites << inv
      end
    end

  end

  def show
  end

  def new
    @invitation = Invitation.new
  end

  def create
    @invitation = Invitation.new(invitation_params)

    if @invitation.save
      render nothing: :true
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
      respond_to do |format|
        format.js
        format.html
      end

    else
      render :edit
    end
  end

  def destroy
    @invitation = Invitation.find(params[:id])
    @invitation.destroy


    respond_to do |format|
      format.js
      format.html
    end


  end

  private

  def invitation_params
    params.require(:invitation).permit(:send_user_id, :accept_user_id, :date, :date_cuisine)
  end

  def accepted_params
    params.require(:invitation).permit(:pending)
  end
end
