class CreateActivityTrainees < ActiveRecord::Migration[5.1]
  def change
    create_table :activity_trainees do |t|
      t.integer :trainee_id
      t.integer :course_id
      t.integer :subject_id
      t.integer :section_id

      t.timestamps
    end
  end
end
