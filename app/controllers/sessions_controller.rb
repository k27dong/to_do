class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by_email(params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      redirect_to user
    else
      # flash[:error] = 'error'
      # # render 'new'
      redirect_to new_session_path, flash: {notice: "Wrong"}
    end
  end

  def destroy
  end


  def sign_in(user)
    cookies.permanent[:remember_token] = user.remember_token
    self.current_user = user
  end

end
