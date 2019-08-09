class AddDetailToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :gender, :string, null: false
    add_column :users, :age, :integer, null: false
    add_column :users, :height, :integer, null: false
    add_column :users, :profile, :text
    add_column :users, :profile_image, :string
  end
end
