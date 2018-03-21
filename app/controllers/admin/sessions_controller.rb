class Admin::SessionsController < ApplicationController
  def new
  end

  def create
    supervisor = Supervisor.find_by mail:params[:session][:email]
    if supervisor && supervisor.authenticate(params[:session][:password])
      log_in supervisor
      redirect_to admin_supervisor_url(supervisor)
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
