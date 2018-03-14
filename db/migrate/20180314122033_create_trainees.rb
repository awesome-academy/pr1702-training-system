class CreateTrainees < ActiveRecord::Migration[5.1]
  def change
    create_table :trainees do |t|
      t.string :name
      t.string :mail
      t.datetime :created_at
      t.datetime :updated_at
      t.string :password_digest
      t.string :remember_digest
      t.string :activation_digest
      t.boolean :activated
      t.datetime :activated_at
      t.string :reset_digest
      t.datetime :reset_sent_at

      t.timestamps
    end
  end
end
