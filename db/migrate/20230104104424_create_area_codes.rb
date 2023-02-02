class CreateAreaCodes < ActiveRecord::Migration[5.2]
  def change
    create_table :area_codes do |t|
      t.string :city_id, null:false
      t.integer :pref_id
      t.string :city_name
      t.timestamps
    end
  end
end
