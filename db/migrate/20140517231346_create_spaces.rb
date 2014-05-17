class CreateSpaces < ActiveRecord::Migration
  def change
    create_table :spaces do |t|
      t.string :city
      t.string :state
      t.boolean :laser_cutter
      t.boolean :three_d_printer
      t.boolean :cnc_router
      t.boolean :sewing_maching
      t.boolean :microcontroller_library

      t.timestamps
    end
  end
end
