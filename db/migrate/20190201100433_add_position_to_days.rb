class AddPositionToDays < ActiveRecord::Migration[5.2]
  def change
    add_column :days, :position, :integer
  end
end
