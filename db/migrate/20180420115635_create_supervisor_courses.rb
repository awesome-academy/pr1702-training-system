class CreateSupervisorCourses < ActiveRecord::Migration[5.1]
  def change
    create_table :supervisor_courses do |t|
      t.integer :supervisor_id
      t.integer :course_id
      t.integer :status

      t.timestamps
    end
  end
end
