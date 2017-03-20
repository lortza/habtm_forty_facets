class CreateSmlSizes < ActiveRecord::Migration
  def change
    create_table :sml_sizes do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
