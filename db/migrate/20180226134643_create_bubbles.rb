class CreateBubbles < ActiveRecord::Migration[5.1]
  def change
    create_table :bubbles do |t|
      t.date :fulldate
      t.integer :day
      t.integer :month
      t.integer :year
      t.string :mood
      t.text :note
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
