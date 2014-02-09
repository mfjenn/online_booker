class RemoveFisrtNameFromUser < ActiveRecord::Migration
  def change
    remove_column :users, :fisrt_name, :string
  end
end
