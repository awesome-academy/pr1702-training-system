class Supervisor < User
  has_many :subjects
  has_many :supervisor_courses
  has_many :courses, through: :supervisor_courses, source: :course
end
