# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Brand.create!([
  {name: 'Merrel'},
  {name: 'PacSun'},
  {name: 'Asana'},
  {name: 'RiteAid'},
  {name: 'Coleman'}
])

@merrel = Brand.find_by_name('Merrel')
@pacsun = Brand.find_by_name('PacSun')
@asana = Brand.find_by_name('Asana')
@riteaid = Brand.find_by_name('RiteAid')
@coleman = Brand.find_by_name('Coleman')

Gender.create!([
  {name: 'Women'},
  {name: 'Men'},
  {name: 'Unisex'}
])

@women = Gender.find_by_name('Women')
@men = Gender.find_by_name('Men')
@unisex = Gender.find_by_name('Unisex')

SmlSize.create!([
  {name: 'small'},
  {name: 'medium'},
  {name: 'large'}
])

@small = SmlSize.find_by_name('small')
@medium = SmlSize.find_by_name('medium')
@large = SmlSize.find_by_name('large')

Product.create!(name: "women's sandal", brand_id: @merrel.id, gender_id: @women.id)
  Variant.create!([
    {product_id: Product.last.id, sml_size_id: @small.id, color: 'Black'},
    {product_id: Product.last.id, sml_size_id: @medium.id, color: 'Black'},
    {product_id: Product.last.id, sml_size_id: @large.id, color: 'Black'},
    {product_id: Product.last.id, sml_size_id: @medium.id, color: 'Taupe'},
    {product_id: Product.last.id, sml_size_id: @large.id, color: 'Taupe'}
  ])
Product.create!(name: "men's sandal", brand_id: @pacsun.id, gender_id: @men.id)
  Variant.create!([
    {product_id: Product.last.id, sml_size_id: @medium.id, color: 'Red'},
    {product_id: Product.last.id, sml_size_id: @large.id, color: 'Red'},
    {product_id: Product.last.id, sml_size_id: @large.id, color: 'Gray'}
  ])
Product.create!(name: 'bikini', brand_id: @pacsun.id, gender_id: @women.id)
  Variant.create!([
    {product_id: Product.last.id, sml_size_id: @small.id, color: 'Blue'},
    {product_id: Product.last.id, sml_size_id: @large.id, color: 'Blue'},
    {product_id: Product.last.id, sml_size_id: @small.id, color: 'Yellow'},
    {product_id: Product.last.id, sml_size_id: @medium.id, color: 'Yellow'}
  ])
Product.create!(name: 'swimming trunks', brand_id: @pacsun.id, gender_id: @men.id)
  Variant.create!([
    {product_id: Product.last.id, sml_size_id: @medium.id, color: 'Aqua'},
    {product_id: Product.last.id, sml_size_id: @medium.id, color: 'Green'},
    {product_id: Product.last.id, sml_size_id: @large.id, color: 'Green'}
  ])
Product.create!(name: 'sunscreen', brand_id: @riteaid.id, gender_id: @unisex.id)
Product.create!(name: "women's boot", brand_id: @merrel.id, gender_id: @women.id)
  Variant.create!([
    {product_id: Product.last.id, sml_size_id: @small.id, color: 'Taupe'},
    {product_id: Product.last.id, sml_size_id: @large.id, color: 'Taupe'},
    {product_id: Product.last.id, sml_size_id: @small.id, color: 'Green'},
    {product_id: Product.last.id, sml_size_id: @medium.id, color: 'Green'},
    {product_id: Product.last.id, sml_size_id: @large.id, color: 'Green'}
  ])
Product.create!(name: "men's boot", brand_id: @merrel.id, gender_id: @men.id)
  Variant.create!([
    {product_id: Product.last.id, sml_size_id: @medium.id, color: 'Taupe'},
    {product_id: Product.last.id, sml_size_id: @large.id, color: 'Taupe'},
    {product_id: Product.last.id, sml_size_id: @medium.id, color: 'Brown'},
    {product_id: Product.last.id, sml_size_id: @large.id, color: 'Brown'}
  ])
Product.create!(name: 'tent', brand_id: @coleman.id, gender_id: @unisex.id)
  Variant.create!([
    {product_id: Product.last.id, color: 'Red'},
    {product_id: Product.last.id, color: 'Green'},
    {product_id: Product.last.id, color: 'Blue'}
  ])
Product.create!(name: 'bear bag', brand_id: @coleman.id, gender_id: @unisex.id)
  Variant.create!([
    {product_id: Product.last.id, sml_size_id: @small.id, color: 'Yellow'},
    {product_id: Product.last.id, sml_size_id: @medium.id, color: 'Green'},
    {product_id: Product.last.id, sml_size_id: @large.id, color: 'Yellow'},
    {product_id: Product.last.id, sml_size_id: @small.id, color: 'Blue'},
    {product_id: Product.last.id, sml_size_id: @medium.id, color: 'Orange'},
    {product_id: Product.last.id, sml_size_id: @large.id, color: 'Orange'}
  ])
Product.create!(name: 'life jacket', brand_id: @coleman.id, gender_id: @unisex.id)
  Variant.create!([
    {product_id: Product.last.id, sml_size_id: @small.id, color: 'Yellow'},
    {product_id: Product.last.id, sml_size_id: @medium.id, color: 'Yellow'},
    {product_id: Product.last.id, sml_size_id: @small.id, color: 'Green'},
    {product_id: Product.last.id, sml_size_id: @medium.id, color: 'Green'}
  ])
Product.create!(name: 'yoga mat', brand_id: @asana.id, gender_id: @unisex.id)
  Variant.create!([
    {product_id: Product.last.id, color: 'Black'},
    {product_id: Product.last.id, color: 'Yellow'},
    {product_id: Product.last.id, color: 'Red'},
    {product_id: Product.last.id, color: 'Purple'},
    {product_id: Product.last.id, color: 'Green'},
    {product_id: Product.last.id, color: 'Blue'}
  ])

Activity.create!([
  {name: 'swimming'},
  {name: 'boating'},
  {name: 'hiking'},
  {name: 'yoga'},
  {name: 'camping'}
])

w_sandal = Product.find_by_name("women's sandal")
m_sandal = Product.find_by_name("men's sandal")
bikini = Product.find_by_name('bikini')
swimming_trunks = Product.find_by_name('swimming trunks')
sunscreen = Product.find_by_name('sunscreen')
w_boot = Product.find_by_name("women's boot")
m_boot = Product.find_by_name("men's boot")
tent = Product.find_by_name('tent')
bear_bag = Product.find_by_name('bear bag')
life_jacket = Product.find_by_name('life jacket')
yoga_mat = Product.find_by_name('yoga mat')

swimming = Activity.find_by_name('swimming')
boating = Activity.find_by_name('boating')
hiking = Activity.find_by_name('hiking')
yoga = Activity.find_by_name('yoga')
camping = Activity.find_by_name('camping')

swimming.products << [w_sandal, m_sandal, bikini, sunscreen, swimming_trunks]
boating.products << [w_sandal, m_sandal, sunscreen, life_jacket]
hiking.products << [sunscreen, w_boot, m_boot]
camping.products << [tent, w_boot, m_boot, bear_bag]
yoga.products << yoga_mat
