class CreateTraineeSections < ActiveRecord::Migration[5.1]
  def change
    create_table :trainee_sections do |t|
      t.integer :trainee_id
      t.integer :section_id
      t.integer :status, default: 0

      t.timestamps
    end
  end
end
