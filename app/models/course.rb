class Course < ApplicationRecord
  self.per_page = 5

  has_many :trainee_courses
  has_many :trainees, through: :trainee_courses
  has_many :pending_trainees, -> {where(trainee_courses: {status: "pending"})},
                                             through: :trainee_courses, source: :trainee
  has_many :accepted_trainees, -> {where(trainee_courses: {status: "accepted"})},
                                           through: :trainee_courses, source: :trainee
  has_many :completed_trainees, -> {where(trainee_courses: {status: "completed"})},
                                             through: :trainee_courses, source: :trainee
  has_many :course_subjects, class_name: CourseSubject.name,
    foreign_key: :course_id,
    dependent: :destroy
  has_many :subjects, through: :course_subjects

  has_many :supervisor_courses
  has_many :supervisors, through: :supervisor_courses, source: :supervisor

  scope :load_info, -> {select(:id, :name)}
  delegate :accepted, :completed, :pending, to: :trainee_courses

  def accept trainee
    trainee_course = trainee_courses.find_by trainee_id: trainee.id
    trainee_course.update_attributes status: "accepted", updated_at: Time.zone.now
  end
end
