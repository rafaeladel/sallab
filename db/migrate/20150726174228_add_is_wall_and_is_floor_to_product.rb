class AddIsWallAndIsFloorToProduct < ActiveRecord::Migration
  def change
    add_column :products, :is_wall, :boolean
    add_column :products, :is_floor, :boolean
  end
end
