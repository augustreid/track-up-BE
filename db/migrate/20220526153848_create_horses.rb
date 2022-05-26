class CreateHorses < ActiveRecord::Migration[7.0]
  def change
    create_table :horses do |t|
      t.string :name
      t.string :sex
      t.integer :age
      t.string :imageUrl

      t.timestamps
    end
  end
end
