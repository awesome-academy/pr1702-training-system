class TraineeCoursesController < ApplicationController
  def create
    course = Course.find_by id: params[:course_id]
    if course.present?
      current_user.enroll(course)
      redirect_to course
    else
      redirect_to root_url
    end
  end
end
