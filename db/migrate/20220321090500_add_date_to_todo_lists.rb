class AddDateToTodoLists < ActiveRecord::Migration[6.1]
  def change
    add_column :todo_lists, :Date, :date
  end
end
