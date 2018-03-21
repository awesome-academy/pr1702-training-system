class Admin::SupervisorsController < ApplicationController
  def show
    @supervisor = Supervisor.find params[:id]
  end
end
