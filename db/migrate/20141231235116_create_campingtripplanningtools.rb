class CreateCampingtripplanningtools < ActiveRecord::Migration
  def change
    create_table :campingtripplanningtools do |t|
      t.string :fname
      t.string :lname
      t.string :city
      t.string :state
      t.float :latitude
      t.float :longitude
      t.boolean :gmaps

      t.timestamps
    end
  end
end
