class SessionsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    if @user = login(params[:email], params[:password])
      redirect_back_or_to(:home, notice: 'Login successful')
    else
      flash.now[:alert] = "Login Failed"
      render :new
    end
  end

  def destroy
    logout
    redirect_to(:home, notice: 'Logged out')
  end
end
