class CreateSubjects < ActiveRecord::Migration[5.1]
  def change
    create_table :subjects do |t|
      t.string :name
      t.text :detail
      t.boolean :completed,  :null => false
      t.timestamps
    end
  end
end
