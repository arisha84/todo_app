class CreateTodos < ActiveRecord::Migration
  def change
    create_table :todos do |t|
      t.string :todo_item
      t.boolean :done

      t.timestamps
    end
  end
end
