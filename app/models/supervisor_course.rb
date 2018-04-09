class SupervisorCourse < ApplicationRecord
  belongs_to :supervisor
  belongs_to :course

end
