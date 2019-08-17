class RemoveInfomationFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :gender, :string
    remove_column :users, :age, :integer
    remove_column :users, :height, :integer
    remove_column :users, :profile, :text
    remove_column :users, :profile_image, :string
  end
end
