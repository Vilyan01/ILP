class AddColumnToEvents < ActiveRecord::Migration
  def change
    add_column :events, :game, :string
  end
end
