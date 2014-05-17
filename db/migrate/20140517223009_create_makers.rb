class CreateMakers < ActiveRecord::Migration
  def change
    create_table :makers do |t|
      t.string :name
      t.string :location
      t.string :space
      t.string :tools
      t.string :skills
      t.text :bio

      t.timestamps
    end
  end
end
