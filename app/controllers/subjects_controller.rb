class SubjectsController < ApplicationController
  ID_PARAMS = {:@course => :course_id,
               :@subject => :id}
  DATA_MODEL = {:@course => :Course,
                :@subject => :Subject}
  DATA = [:@course, :@subject]

  before_action :verify_trainee, only: [:index, :show]
  before_action -> { load_data(DATA, DATA_MODEL, ID_PARAMS) }, only: :show
  before_action :load_trainee_subject, only: [:show, :update]

  def show; end
  def update
      if @trainee_subject.completed?
        @trainee_subject.update completed: nil
        flash[:success] = I18n.t  "controllers.subjects_controller.update.Uncompleted_successfully"
      else
        @trainee_subject.update completed: true
        flash[:success] = I18n.t  "controllers.subjects_controller.update.Completed_successfully"
      end
    redirect_to  course_subject_url
  end
  private

  def load_trainee_subject
    @subject = Subject.find_by id: params[:id]
    if @subject.nil?
      redirect_to root_url
    end
    @trainee_subject = @subject.trainee_subjects.find_by trainee_id: current_user.id
    if @trainee_subject.nil?
      redirect_to root_url
    end
  end
end
