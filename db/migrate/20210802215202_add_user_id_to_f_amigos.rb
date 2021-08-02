class AddUserIdToFAmigos < ActiveRecord::Migration[6.1]
  def change
    add_column :f_amigos, :user_id, :integer
    add_index :f_amigos, :user_id
  end
end
