class ProductSearch < FortyFacets::FacetSearch
  model 'Product'

  text  :name
  text  :sku

  facet :gender, name: 'Gender', order: :id
  facet :activities, name: "Activities", order: :name

end
