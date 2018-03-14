class CreateActivitySupervisors < ActiveRecord::Migration[5.1]
  def change
    create_table :activity_supervisors do |t|
      t.integer :supervisor_id
      t.integer :course_id
      t.integer :subject_id
      t.integer :section_id

      t.timestamps
    end
  end
end
