class CreateDeepWells < ActiveRecord::Migration[6.0]
  def change
    create_table :deep_wells do |t|
      t.integer :dwID
      t.string :deepWellName
      t.date :dateGranted
      t.string :ownerName
      t.string :wellLocation
      t.string :wellCoodinates
      t.string :waterPermitNo
      t.string :contractor
      t.string :depthTotal
      t.date :dateofUTVI
      t.string :reason

      t.timestamps
    end
  end
end
