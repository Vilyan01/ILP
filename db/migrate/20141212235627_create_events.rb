class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.string :game
      t.datetime :date
      t.text :description

      t.timestamps
    end
  end
end
