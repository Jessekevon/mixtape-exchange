class AddNameAndProfilePicToUsers < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :profile_pic, :string
  end
end
