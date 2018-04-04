class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :mail
      t.string :password_digest
      t.string :remember_digest
      t.string :type

      t.timestamps
    end
  end
end
