class UsersController < ApplicationController


  def index

    @cuis = params[:category]
    potentials = []
    array_users = User.where(down_to_meet: true)
    invites_arr = current_user.inv_arr


    array_users.each do |user|
      cuisine_A = user.top_cats
      if cuisine_A[0].include?(@cuis)
        potentials << user.id
      elsif cuisine_A[1].include?(@cuis)
        potentials << user.id
      elsif cuisine_A[2].include?(@cuis)
        potentials << user.id
      else
      end
    end

    potentials.each do |id|
      invites_arr.each do |inv|
        if (inv.send_user_id == current_user.id && inv.accept_user_id == id) || (inv.accept_user_id == current_user.id && inv.send_user_id == id)
          potentials.delete(id)
        end
      end
    end




    @users = []
    potentials.each do |id|
      @users << User.find(id)
    end


    if request.xhr?
      render partial: 'users'
    end
  end



  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)


    if @user.save
      auto_login(@user)

      UserMailer.welcome_email(@user).deliver_later

      redirect_to root_url :notice => "signed up!"

    else
      render :new
    end
  end

  def show
    @user = User.find(params[:id])


      respond_to do |format|
        format.js
        format.html
      end


    # if request.xhr?
    #   render partial: 'invitations/invitations'
    # end
  end

  def edit
    @user = User.find(current_user)
  end

  def update
    @user = User.find(current_user)
    if @user.update_attributes(user_params_edit)
      if request.xhr?
        render nothing: :true
      else
        render :show
      end
    else
      render :edit
    end
  end

  private
  def user_params_edit
    params.require(:user).permit(:first_name, :last_name, :username, :email, :address, :phone_number, :latitude, :longitude, :profile_pic, :bio, :age, :down_to_meet)
  end

  def user_params
    params.require(:user).permit(:first_name, :last_name, :user_name, :email, :address, :age, :phone_number, :password, :password_confirmation)
  end
end
