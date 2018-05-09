class Trainee < User
  has_many :trainee_courses
  has_many :courses, through: :trainee_courses
  has_many :pending_courses, -> {where(trainee_courses: {status: "pending"})}, 
                                             through: :trainee_courses, source: :course
  has_many :accepted_courses, -> {where(trainee_courses: {status: "accepted"})}, 
                                           through: :trainee_courses, source: :course                                            
  has_many :completed_courses, -> {where(trainee_courses: {status: "completed"})}, 
                                             through: :trainee_courses, source: :course
  def enroll? course
    courses.include? course
  end

  def check_status course, status
    method_name = status.to_s + "_courses"
    courses = public_send(method_name) if respond_to? method_name
    courses.include? course
  end

  def enroll course
    trainee_courses.create course_id: course.id, status: "pending"
  end
end
