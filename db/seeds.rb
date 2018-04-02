# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
trainee = Trainee.create(name: "nguyen ba the",
				mail: "nguyenbathe@gmail.com",
				password: "123456",
				activated: true)

subject1 = Subject.create(
				name: "ruby ",
				detail: " detail 1"
				)
subject2 = Subject.create(
				name: "php",
				detail: "detail 2")
Section.create(subject_id: subject1.id,
			name: "Bai 1",
			content: "Noi dung 1"
			)
Section.create(subject_id: subject1.id,
			name: "Bai 2",
			content: "Noi dung 2"
			)
Section.create(subject_id: subject1.id,
			name: "Bai 3",
			content: "Noi dung 3"
			)
Section.create(subject_id: subject1.id,
			name: "Bai 4",
			content: "Noi dung 4"
			)
Section.create(subject_id: subject1.id,
			name: "Bai 5",
			content: "Noi dung 5"
			)
Section.create(subject_id: subject2.id,
			name: "Bai 6",
			content: "Noi dung 6"
			)
Section.create(subject_id: subject2.id,
			name: "Bai 7",
			content: "Noi dung 7"
			)
Section.create(subject_id: subject2.id,
			name: "Bai 8",
			content: "Noi dung 8"
			)
Section.create(subject_id: subject2.id,
			name: "Bai 9",
			content: "Noi dung 9"
			)
Section.create(subject_id: subject2.id,
			name: "Bai 10",
			content: "Noi dung 10"
			)
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


supervisor = Supervisor.create(name: "Teacher 1",
								mail: "teacher1@gamil.com",
								password: "123456",
								activated: true,
								subject_id: subject1.id)
