class Trainee < User
  has_many :trainee_courses
  has_many :courses, through: :trainee_courses
end
