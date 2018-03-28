class Course < ApplicationRecord
	self.per_page=5
	
	has_many :trainee_courses
	has_many :course_subjects, class_name:  "CourseSubject",
                                  foreign_key: "course_id",
                                  dependent:   :destroy
    has_many :subjects, through: :course_subjects
end
