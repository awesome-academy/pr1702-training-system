3.times do |n|
  User.create(name: "User#{n}",
          mail: "user#{n}@gmail.com",
          password: "123456",
          type: "Trainee")
end

3.times do |n|
  User.create(name: "Teacher#{n}",
               mail: "teacher#{n}@gmail.com",
               password: "123456",
               type: "Supervisor"
  )
end

3.times do |n|
  Subject.create(
    name: "subject#{n} ",
    detail: " detail#{n}"
  )
end

10.times do |n|
  subject_id = n / 3
  Section.create subject_id: subject_id, name: "Bai #{n+1}", content: "Noi dung #{n+1}"
end

3.times do |n|
    Course.create(
        name: "Course#{n}",
        detail: "Course_detail#{n}"
    )
end

Trainee.all.each do |trainee|
  Course.all.each do |course|
    TraineeCourse.create course_id: course.id, trainee_id: trainee.id
  end
end

Course.all.each do |course|
  Subject.all.each do |subject|
    CourseSubject.create subject_id: subject.id, course_id: course.id
  end
end

Course.all.each do |course|
  Supervisor.all.each do |supervisor|
    SupervisorCourse.create supervisor_id: supervisor.id, course_id: course.id
  end
end
