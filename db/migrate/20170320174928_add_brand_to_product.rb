class AddBrandToProduct < ActiveRecord::Migration
  def change
    add_reference :products, :brand, index: true
    add_foreign_key :products, :brands
  end
end
