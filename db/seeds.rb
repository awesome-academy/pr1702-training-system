trainee = Trainee.create(name: "nguyen ba the",
        mail: "nguyenbathe@gmail.com",
        password: "123456",
        type: "Trainee")

subject1 = Subject.create(
        name: "ruby ",
        detail: " detail 1"
        )
subject2 = Subject.create(
        name: "php",
        detail: "detail 2")

10.times do |n|
  subject_id = n > 4 ? subject2.id : subject1.id
  Section.create subject_id: subject_id, name: "Bai #{n+1}", content: "Noi dung #{n+1}"
end

course = Course.create(
      name: "Lap trinh",
      detail: " Lap trinh web tai framgia"
      )

CourseSubject.create(
      course_id: course.id,
      subject_id: subject1.id)

CourseSubject.create(
      course_id: course.id,
      subject_id: subject2.id)

TraineeCourse.create( course_id: course.id,
            trainee_id: trainee.id)


supervisor = User.create(name: "Teacher 1",
                mail: "teacher1@gmail.com",
                password: "123456",
                type: "Supervisor"
                )
SubjectSupervisor.create( subject_id: subject1.id,
            supervisor_id: supervisor.id)
