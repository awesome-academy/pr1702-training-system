class AddIndexToTraineeSubjects < ActiveRecord::Migration[5.1]
  def change
    add_index :trainee_subjects, :trainee_id
    add_index :trainee_subjects, :subject_id
    add_index :trainee_subjects, [:subject_id, :trainee_id], unique:true
  end
end
