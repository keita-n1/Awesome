class CreatePersonals < ActiveRecord::Migration[5.2]
  def change
    create_table :personals do |t|
      t.string :gender
      t.integer :age
      t.integer :height
      t.text :profile
      t.string :profile_image
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
