class AddGenerationToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :generation, :string
  end
end
