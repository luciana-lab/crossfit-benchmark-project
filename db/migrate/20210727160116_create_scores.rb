class CreateScores < ActiveRecord::Migration[6.1]
  def change
    create_table :scores do |t|
      t.boolean, :rx, default: 1
      t.time :time
      t.integer :reps
      t.date :date
      t.string :notes
      t.boolean, :public, default: 1
      t.belongs_to :athlete, null: false, foreign_key: true
      t.belongs_to :workout, null: false, foreign_key: true

      t.timestamps
    end
  end
end
