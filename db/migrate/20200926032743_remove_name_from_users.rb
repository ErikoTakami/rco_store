class RemoveNameFromUsers < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :name, :string
    remove_column :users, :name_kana, :string
  end
end
