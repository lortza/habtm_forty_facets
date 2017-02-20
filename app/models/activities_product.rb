class ActivitiesProduct < ActiveRecord::Base
  belongs_to :activity
  belongs_to :product
end
