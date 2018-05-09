class Admin::TraineeCoursesController < ApplicationController
  before_action :verify_supervisor, only: :updates
  def update
    course = Course.find_by id: params[:course_id]
    redirect_to root_url if course.nil?
    trainee = Trainee.find_by id: params[:trainee_id]
    redirect_to root_url if trainee.nil?
    course.accept trainee
    redirect_to admin_course_path course
  end
end
