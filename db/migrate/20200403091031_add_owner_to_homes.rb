class AddOwnerToHomes < ActiveRecord::Migration[6.0]
  def change
    add_column :homes, :owner, :integer
  end
end
