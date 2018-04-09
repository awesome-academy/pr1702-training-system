class CoursesController < ApplicationController
  def index
    @courses = Course.paginate page: params[:page]
  end

  def show
    @course = Course.find_by id: params[:id]

    if @course.nil?
      redirect_to root_url
    end
  end
end
