class Product < ActiveRecord::Base
  belongs_to :gender
  has_and_belongs_to_many :activities
end
