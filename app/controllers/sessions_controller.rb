class SessionsController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = login(params[:email], params[:password])
    if @user = login(params[:email], params[:password])
      redirect_back_or_to(:homes, notice: 'Login successful')
    else
      flash.now[:alert] = "Login Failed"
      redirect_to(:homes, notice: 'Try Again')
    end

  end

  def destroy
    logout
    redirect_to(:homes, notice: 'Logged out')
  end
end
