class CreatePrefCodes < ActiveRecord::Migration[5.2]
  def change
    create_table :pref_codes do |t|
      t.integer :pref_id, null:false
      t.string :pref_name
      t.timestamps
    end
  end
end
