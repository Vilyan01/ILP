class CreateCampingtripplanningtools < ActiveRecord::Migration
  def change
    create_table :campingtripplanningtools do |t|
      t.string :fname
      t.string :lname
      t.string :city
      t.string :state

      t.timestamps
    end
  end
end
