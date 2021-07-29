class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :password_digest
      t.integer :age
      t.float :height
      t.integer :weight
      t.string :country
      t.string :uid
      t.string :provider
      t.belongs_to :gym, null: false, foreign_key: true

      t.timestamps
    end
  end
end
