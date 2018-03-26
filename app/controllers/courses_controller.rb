class CoursesController < ApplicationController
  def index
    @courses = Course.paginate(:page => params[:page])
  end
  
  def show
    #byebug
    @course = Course.find_by id: params[:id]
    
  end

end
