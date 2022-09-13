class CreateIslands < ActiveRecord::Migration[6.0]
  def change
    create_table :islands do |t|
      t.integer :IID
      t.string :islandName
      t.integer :numPlants

      t.timestamps
    end
  end
end
