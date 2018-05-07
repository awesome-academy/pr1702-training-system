class Trainee < User
  has_many :trainee_courses
  has_many :courses, through: :trainee_courses
  has_many :trainee_subjects
  has_many :subjects, through: :trainee_subjects
end
