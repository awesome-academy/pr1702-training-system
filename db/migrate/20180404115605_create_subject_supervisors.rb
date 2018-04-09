class CreateSubjectSupervisors < ActiveRecord::Migration[5.1]
  def change
    create_table :subject_supervisors do |t|
      t.integer :subject_id
      t.integer :supervisor_id
      t.boolean :completed

      t.timestamps
    end
  end
end
