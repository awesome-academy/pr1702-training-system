class Admin::SubjectsController < ApplicationController
  ID_PARAMS = {:@course => :course_id,
               :@subject => :id}
  DATA_MODEL = {:@course => :Course,
                :@subject => :Subject}
  DATA = [:@course, :@subject]

  before_action :verify_supervisor, only: [:index, :show]
  before_action -> { load_data(DATA, DATA_MODEL, ID_PARAMS) }, only: :show

  def show;  end


  def create
    @subject = Subject.new subject_params
  end

  def update
    @subject = Subject.find_by id: params[:id]
    @course = CourseSubject.find_by id: params[:course_id]
    if @subject.update_attributes completed: status_subject
    # if @subject.update_attributes completed: !!params[:subject][:completed]
      redirect_to admin_course_subject_path(@course, @subject)
    else
      redirect_to admin_course_subject_path(@course, @subject)
    end
  end

  private
  def subject_params
    params.require(:subject).permit :completed
  end

  def status_subject
    params[:subject][:completed] == "true"? true : false
  end

end
