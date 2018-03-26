class SessionsController < ApplicationController
  def new
  end
  def create
    trainee = Trainee.find_by mail:params[:session][:email]
    if trainee && trainee.authenticate(params[:session][:password])
      log_in trainee
      redirect_to trainee
    else
      flash.now[:danger] = 'Invalid email/password combination'
      render 'new'
    end
  end
  def destroy
    log_out
    redirect_to root_url
  end
end
