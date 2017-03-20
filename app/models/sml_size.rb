class SmlSize < ActiveRecord::Base
  has_many :variants
  has_many :product_assignments, through: :variants, source: :product
end
