class Subject < ApplicationRecord
  has_many :course_subjects, class_name: CourseSubject.name,
    foreign_key: :subject_id,
    dependent: :destroy
  has_many :courses, through: :course_subjects
  has_many :sections
  has_many :subject_supervisors
  has_many :supervisors, through: :subject_supervisors
end
