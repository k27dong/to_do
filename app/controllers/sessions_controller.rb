class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by_email(params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      sign_in user
      redirect_to user
    else
      # flash[:error] = 'error'
      # # render 'new'
      redirect_to new_session_path, flash: {notice: "Wrong"}
    end
  end

  def destroy
    sign_out
    redirect_to root_path
  end

end
