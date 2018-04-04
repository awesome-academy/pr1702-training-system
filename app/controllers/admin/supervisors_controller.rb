class Admin::SupervisorsController < ApplicationController
  def show
    @supervisor = Supervisor.find_by id: params[:id]
    redirect_to root_url if @supervisor.nil?
  end
end
