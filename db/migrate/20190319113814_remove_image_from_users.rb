class RemoveImageFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :name, :string
    remove_column :users, :profile_image, :string
    remove_column :users, :profile_text, :text
    remove_column :users, :business_type, :string
  end
end
