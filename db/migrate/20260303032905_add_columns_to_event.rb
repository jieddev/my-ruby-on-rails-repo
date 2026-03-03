class AddColumnsToEvent < ActiveRecord::Migration[8.1]
  def change
    add_column :events, :title, :string
    add_column :events, :description, :text
  end
end
