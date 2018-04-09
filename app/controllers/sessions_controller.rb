class SessionsController < ApplicationController
  def new; end

  def create
    user = User.find_by mail:params[:session][:email]
    if user && user.authenticate(params[:session][:password])
      if verify_trainee?
        log_in user
        redirect_to trainee_url(user)
      else
        log_in user
        redirect_to admin_supervisor_url(user)
      end
    else
      flash.now[:danger] = "Invalid email/password combination"
      render :new
    end
  end

  def destroy
    log_out
    redirect_to root_url
  end
end
