class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :load_user

  # def is_admin
  #   if current_user.admin == true
  #   end
  # end

  # helper_method :admin?

  def admin?
    if current_user
      current_user.admin
    end
  end

  def new_user
    akhmd = User.new
  end

  def create_user
    akhmd = User.new(user_params)
    if akhmd.save
      # auto_login(@user)
      redirect_to root_url
    else
      render :new_user
    end
  end

private

  def load_user
    @users = User.all
  end

  def user_params
    params.require(:user).permit(:first_name, :last_name, :user_name, :email, :address, :phone_number, :password, :password_confirmation)
  end

end
