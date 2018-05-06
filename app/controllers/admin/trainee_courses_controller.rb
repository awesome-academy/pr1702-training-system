class Admin::TraineeCoursesController < ApplicationController
  def update
    course = Course.find_by id: params[:course_id]
    trainee = Trainee.find_by id: params[:trainee_id]
    if course.present? && trainee.present?
      course.accept(trainee)
      redirect_to admin_course_path(course)
    else
      redirect_to root_url
    end
  end
end
