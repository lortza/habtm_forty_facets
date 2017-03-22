class Product < ActiveRecord::Base
  include Elasticsearch::Model
  include Elasticsearch::Model::Callbacks

  index_name Rails.application.class.parent_name.underscore
  document_type self.name.downcase

  belongs_to :gender
  belongs_to :brand
  has_and_belongs_to_many :activities
  has_many :variants, dependent: :destroy
  has_many :size_assignments, through: :variants, source: :sml_size

  #https://www.pluralsight.com/guides/ruby-ruby-on-rails/elasticsearch-with-ruby-on-rails
  # settings index: { number_of_shards: 1 } do
  #   mapping dynamic: false do
  #     indexes :id, type: :integer
  #     indexes :name, analyzer: 'english', boost: 10
  #     indexes :gender_id, type: :byte
  #     indexes :gender_name, analyzer: 'english'
  #   end
  # end

  def as_indexed_json(options = nil)
    self.as_json(
      only: [:id, :name, :description],
      include: [:gender, :brand, :activities, :variants, :size_assignments]
      # methods: [:method_name]
    )
  end

  # def self.search(query)
  #   __elasticsearch__.search(
  #   {
  #     query: {
  #       multi_match: {
  #         type: 'most_fields',
  #         query: query,
  #         fields: ['name^5', 'description']
  #       } #multimatch
  #     },#query
  #     highlight: { #highlights matched words inside the query
  #       pre_tags: ['<mark>'],
  #       post_tags: ['</mark>'],
  #       fields: {
  #         name: {},
  #         description: {},
  #       }#fields
  #     },#highlight
  #     suggest: { #suggests corrections for misspelled words
  #       text: query,
  #       name: {
  #         term: {
  #           size: 3,
  #           field: :name
  #         }#term
  #       },#name
  #       description: {
  #         term: {
  #           size: 3,
  #           field: :description
  #         }#term
  #       }#description
  #     }#suggest
  #     # filter: { #filters out products that should never be seen
  #     #   terms: {
  #     #     visible: [true]
  #     #   }#terms
  #     # },#filter
  #   }) #  search
  # end


  #aaronvb.com
  # def as_indexed_json(options={})
  #   as_json(
  #     only: [:id, :name],
  #     include: [:gender, :brand, :activities, :variants, :size_assignments]
  #     )
  # end

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
