class TraineesController < ApplicationController
  def new; end

  def show
    @trainee = Trainee.find_by id: params[:id]
    redirect_to root_url if @trainee.nil?
  end
end
