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

8.times do |n|
  Subject.create(
    name: "subject#{n} ",
    detail: " detail#{n}"
  )
end

10.times do |n|
  subject_id = n / 3
  Section.create subject_id: subject_id, name: "Bai #{n+1}", content: "Noi dung #{n+1}"
end

4.times do |n|
    Course.create(
        name: "Course#{n}",
        detail: "Course_detail#{n}"
    )
end

Trainee.all.each_with_index do |trainee, idx_1|
  Course.all.each_with_index do |course, idx_2|
    i = ((idx_1+1) * (idx_2+1)) % 3 + 1 
    TraineeCourse.create course_id: course.id, trainee_id: trainee.id, status: i
  end
end

TraineeCourse.first.destroy

Subject.all.each_with_index do |subj, idx|
  CourseSubject.create course_id: (idx + 1)/2, subject_id: idx 
end

Course.all.each do |course|
  Supervisor.all.each do |supervisor|
    SupervisorCourse.create supervisor_id: supervisor.id, course_id: course.id
  end
end
