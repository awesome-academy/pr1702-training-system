class SubjectsController < ApplicationController
  ID_PARAMS = {:@course => :course_id,
               :@subject => :id}
  DATA_MODEL = {:@course => :Course,
                :@subject => :Subject}
  DATA = [:@course, :@subject]

  before_action :verify_trainee, only: [:index, :show]
  before_action -> { load_data(DATA, DATA_MODEL, ID_PARAMS) }, only: :show
  before_action -> { enroll_course(@course) }, only: :show

  def show; end
end
