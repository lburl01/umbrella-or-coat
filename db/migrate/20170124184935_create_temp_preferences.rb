class CreateTempPreferences < ActiveRecord::Migration[5.0]
  def change
    create_table :temp_preferences do |t|
      t.references :user, index: true, null: false, foreign_key: true
      t.integer :coat_min
    end
  end
end
