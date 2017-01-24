class CreateZipCodes < ActiveRecord::Migration[5.0]
  def change
    create_table :zip_codes do |t|
      t.references :user, index: true, null: false, foreign_key: true
      t.integer :zip_code, null: false
      t.boolean :default_zip, null: false, default: false
    end
  end
end
