class CreatePlants < ActiveRecord::Migration[6.0]
  def change
    create_table :plants do |t|
      t.integer :pID
      t.string :plantName
      t.integer :numDeepWell

      t.timestamps
    end
  end
end
