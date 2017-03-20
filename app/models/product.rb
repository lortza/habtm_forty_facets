class Product < ActiveRecord::Base
  include Elasticsearch::Model
  include Elasticsearch::Model::Callbacks

  belongs_to :gender
  belongs_to :brand
  has_and_belongs_to_many :activities
  has_many :variants, dependent: :destroy
  has_many :size_assignments, through: :variants, source: :sml_size

  #aaronvb.com
  def as_indexed_json(options={})
    as_json(
      only: [:id, :name],
      include: [:gender, :brand, :activities, :variants, :size_assignments]
      )
  end

  #RailsCast http://railscasts.com/episodes/307-elasticsearch-part-2?autoplay=true
  # mapping do
  #   indexes :id, type: 'integer'
  #   indexes :name, boost: 10
  #   indexes :gender_id, type: 'integer'
  #   indexes :gender_name
  # end

  # def gender_name
  #   gender.name
  # end

# StackOverflow
  # def search_data
  #   attributes.merge(
  #     gender_name: gender(&:name)
  #     activities_name: activities.map(&:name)
  #     )
  # end


end #class
