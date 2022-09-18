class CreateDeepWellOverviews < ActiveRecord::Migration[6.0]
  def change
    create_table :deep_well_overviews do |t|
      t.integer :dwID
      t.string :deepWellName

      t.timestamps
    end
  end
end
