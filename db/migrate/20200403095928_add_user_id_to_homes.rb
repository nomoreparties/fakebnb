class AddUserIdToHomes < ActiveRecord::Migration[6.0]
  def change
    add_column :homes, :user_id, :integer
  end
end
