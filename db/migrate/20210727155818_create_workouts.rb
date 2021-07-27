class CreateWorkouts < ActiveRecord::Migration[6.1]
  def change
    create_table :workouts do |t|
      t.string :name
      t.string :group
      t.string :category
      t.text :description
      t.text :about

      t.timestamps
    end
  end
end
