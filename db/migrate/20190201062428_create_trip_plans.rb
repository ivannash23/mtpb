class CreateTripPlans < ActiveRecord::Migration[5.2]
  def change
    create_table :trip_plans do |t|
      t.string :title
      t.text :summary

      t.timestamps
    end
  end
end
