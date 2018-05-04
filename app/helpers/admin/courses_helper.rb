module Admin::CoursesHelper
  def find_trainee_course trainee, course
    TraineeCourse.find_by trainee_id: trainee.id, course_id: course.id
  end
end
