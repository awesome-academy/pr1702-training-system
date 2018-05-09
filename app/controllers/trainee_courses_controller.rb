class TraineeCoursesController < ApplicationController
  before_action :verify_trainee, only: :update
  def create
    request_params = %r{/([a-z]+)/(\d+)}.match(request.referer).captures
    course = Course.find_by id: request_params
    redirect_to root_url if course.nil?
    current_user.enroll course
    redirect_to course
  end
end
