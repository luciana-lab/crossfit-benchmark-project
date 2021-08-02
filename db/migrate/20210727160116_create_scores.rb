class CreateScores < ActiveRecord::Migration[6.1]
  def change
    create_table :scores do |t|
      t.boolean :rx, default: 1
      t.time :result_time
      t.integer :result_reps
      t.date :date
      t.string :notes
      t.boolean :public, default: 1
      t.integer :user_id
      t.integer :workout_id

      t.timestamps
    end
  end
end
