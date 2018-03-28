class CourseSubject < ApplicationRecord
	belongs_to :course, class_name: "Course"
  	belongs_to :subject, class_name: "Subject"
end
