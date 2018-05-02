class Admin::SectionsController < ApplicationController
  ID_PARAMS = {:@course => :course_id,
               :@subject =>:subject_id,
               :@section =>:id}
  DATA_MODEL = {:@course => :Course,
                :@subject => :Subject,
                :@section =>:Section}
  DATA = [:@course, :@subject, :@section]

  before_action :verify_supervisor, only: [:index, :show]
  before_action -> { load_data(DATA, DATA_MODEL, ID_PARAMS) }, only: :show

  def show;  end

end
