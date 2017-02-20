class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.references :gender, index: true

      t.timestamps null: false
    end
    add_foreign_key :products, :genders
  end
end
