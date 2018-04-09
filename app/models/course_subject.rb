class CourseSubject < ApplicationRecord
  belongs_to :course, class_name: Course.name
  belongs_to :subject, class_name: Subject.name
end
