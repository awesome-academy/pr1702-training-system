class SectionsController < ApplicationController
  def show
    #byebug
    @section = Section.find_by id: params[:id]
    
  end
end
