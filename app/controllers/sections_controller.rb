class SectionsController < ApplicationController
  def show
    @section = Section.find_by id: params[:id]

    if @section.nil?
      redirect_to root_url
    end
  end
end
