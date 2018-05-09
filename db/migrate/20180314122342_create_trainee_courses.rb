class CreateTraineeCourses < ActiveRecord::Migration[5.1]
  def change
    create_table :trainee_courses do |t|
      t.integer :trainee_id
      t.integer :course_id
      t.integer :status, default: 1

      t.timestamps
    end
  end
end
