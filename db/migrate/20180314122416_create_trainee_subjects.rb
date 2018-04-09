class CreateTraineeSubjects < ActiveRecord::Migration[5.1]
  def change
    create_table :trainee_subjects do |t|
   	  t.integer :trainee_id
      t.integer :subject_id
      t.integer :status, default: 0

      t.timestamps
    end
  end
end
