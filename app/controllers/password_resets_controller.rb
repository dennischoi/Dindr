class PasswordResetsController < ApplicationController
  skip_before_filter :require_login

  def index
  end

  def create
    @user = User.find_by_email(params[:email])

    @user.deliver_reset_password_instructions! if @user


    redirect_to(root_path, :notice => 'Instructions have been sent to your email.')
  end

  # this is the reset pasword form.
  def edit
    @token = params[:id]
    @user = User.load_from_reset_password_token(params[:id])

    if @user.blank?
      not_authenticated
      return
    end
  end

  # this action fires when the user has sent the reset password form.
  def update
    @token = params[:id]
    @user = User.load_from_reset_password_token(params[:id])

    if @user.blank?
      not_authenticated
      return
    end

    # the next line makes the password confirmation validation work
    @user.password_confirmation = params[:user][:password_confirmation]
    # the next line clears the temporary token and updates the password
    if @user.change_password!(params[:user][:password])
      redirect_to(root_path, :notice => 'Password was successfully updated.')
    else
      render :action => "edit"
    end
  end
end
