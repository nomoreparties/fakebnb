class AddDaysToHomes < ActiveRecord::Migration[6.0]
  def change
    add_column :homes, :days, :integer
  end
end
