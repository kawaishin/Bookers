class AddProfileImageToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :profile_image, :text
    add_column :users, :introduction, :text
  end
end
