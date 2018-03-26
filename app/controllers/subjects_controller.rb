class SubjectsController < ApplicationController
  def show
    @subject = Subject.find_by id: params[:id]

    if @subject.nil?
      redirect_to root_url
    end
  end
end
