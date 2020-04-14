class RemoveDaysFromHomes < ActiveRecord::Migration[6.0]
  def change
    remove_column :homes, :days
  end
end
