class RenameDateToDate < ActiveRecord::Migration[6.1]
  def change
    rename_column :todo_lists, :Date, :date
  end
end
