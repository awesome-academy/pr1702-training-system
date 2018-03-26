class Subject < ApplicationRecord
	has_many :course_subjects, class_name:  "CourseSubject",
                                   foreign_key: "subject_id",
                                   dependent:   :destroy
    has_many :courses , through: :course_subjects
    has_many :sections, foreign_key: "subject_id"
end
