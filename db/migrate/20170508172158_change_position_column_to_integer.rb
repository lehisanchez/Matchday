class ChangePositionColumnToInteger < ActiveRecord::Migration[5.1]
  def change
    change_column :standings, :position, :integer
  end
end