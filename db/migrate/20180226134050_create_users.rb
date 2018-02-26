class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :email
      t.text :password_digest
      t.date :dob
      t.string :gender
      t.string :country
      t.datetime :regdate

      t.timestamps
    end
  end
end
