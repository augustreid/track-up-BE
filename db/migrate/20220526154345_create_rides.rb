class CreateRides < ActiveRecord::Migration[7.0]
  def change
    create_table :rides do |t|
      t.references :horse, null: false, foreign_key: true
      t.string :day
      t.string :exercise
      t.string :tack
      t.integer :walk
      t.integer :trot
      t.integer :canter
      t.string :notes

      t.timestamps
    end
  end
end
