class CreateTraineeSubjects < ActiveRecord::Migration[5.1]
  def change
    create_table :trainee_subjects do |t|
   	  t.integer :trainee_id
      t.integer :subject_id
      t.boolean :completed

      t.timestamps
    add_index :trainee_subjects, :trainee_id
    add_index :trainee_subjects, :subject_id
    add_index :trainee_subjects, [:subject_id, :trainee_id], unique:true
    end
  end
end
