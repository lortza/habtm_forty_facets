class Variant < ActiveRecord::Base
  belongs_to :product
  belongs_to :sml_size
end
