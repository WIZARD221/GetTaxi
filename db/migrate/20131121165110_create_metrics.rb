class CreateMetrics < ActiveRecord::Migration
  def change
    create_table :metrics do |t|
      t.string :name
      t.string :value
      t.string :type
      t.integer :latitude
      t.integer :longitude
      t.integer :time_stamp
      t.timestamps
    end
  end
end
