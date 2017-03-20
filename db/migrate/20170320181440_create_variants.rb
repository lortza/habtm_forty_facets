class CreateVariants < ActiveRecord::Migration
  def change
    create_table :variants do |t|
      t.references :product, index: true
      t.string :color
      t.references :sml_size, index: true

      t.timestamps null: false
    end
    add_foreign_key :variants, :products
    add_foreign_key :variants, :sml_sizes
  end
end
