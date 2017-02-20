class CreateActivitiesProducts < ActiveRecord::Migration
  def change
    create_table :activities_products do |t|
      t.references :activity, index: true
      t.references :product, index: true

      t.timestamps null: false
    end
    add_foreign_key :activities_products, :activities
    add_foreign_key :activities_products, :products
  end
end
