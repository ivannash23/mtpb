class CreateDays < ActiveRecord::Migration[5.2]
  def change
    create_table :days do |t|
      t.string :title
      t.text :description
      t.references :trip_plan, foreign_key: true

      t.timestamps
    end
  end
end
