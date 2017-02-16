class SessionsController < ApplicationController
  def new
    @user = User.new
    render :new
  end

  def create
    user = User.find_by_credentials(params[:user][:email], params[:user][:password])

    if user.nil?
      flash.now[:errors] = user.errors.full_messages
      render :new
    elsif logged_in?(user)
      redirect_to users_url
    else
      log_in_user!(user)
      redirect_to users_url
    end
  end

  
end
