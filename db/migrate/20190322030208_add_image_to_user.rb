class AddImageToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :profile_image, :string
    add_column :users, :profile_text, :text
    # add_column :users, :nickname, :string
    add_column :users, :user_rank, :string
    add_column :users, :location, :string
    add_column :users, :sex, :string
  end
end
