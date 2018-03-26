class TraineesController < ApplicationController
  def new
  end

  def show
    @trainee = Trainee.find params[:id]
  end
end
