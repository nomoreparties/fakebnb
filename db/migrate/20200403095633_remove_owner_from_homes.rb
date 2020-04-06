class RemoveOwnerFromHomes < ActiveRecord::Migration[6.0]
  def change
    remove_column :homes, :owner
  end
end
