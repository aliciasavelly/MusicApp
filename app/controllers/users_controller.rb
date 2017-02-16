class UsersController < ApplicationController
  def new
    @user = User.new
    render :new
  end

  def create
    @user = User.new(user_params)

    if user.save!
      redirect_to users_url
    else
      flash.now[:errors] = @users.errors.full_messages
      render :new
    end
  end

  def show
    render @user
  end

  private
  def user_params
    params.require(:user).permit(:email, :password)
  end
end
