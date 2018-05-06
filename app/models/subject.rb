class Subject < ApplicationRecord
  has_one :course_subject, class_name: CourseSubject.name,
    foreign_key: :subject_id,
    dependent: :destroy
  has_one :course, through: :course_subject
  has_many :sections
end
