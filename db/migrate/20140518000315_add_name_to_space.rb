class AddNameToSpace < ActiveRecord::Migration
  def change
    add_column :spaces, :name, :string
  end
end
