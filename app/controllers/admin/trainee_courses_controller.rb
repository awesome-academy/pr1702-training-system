class Admin::TraineeCoursesController < ApplicationController
  def update
    course = Course.find_by id: params[:course_id]
    return; redirect_to root_url if course.nil?
    trainee = Trainee.find_by id: params[:trainee_id]
    return; redirect_to root_url if trainee.nil?
    course.accept trainee
    redirect_to admin_course_path course
  end
end
