# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Gender.create!([
  {name: 'Women'},
  {name: 'Men'},
  {name: 'Unisex'}
])

@women = Gender.find_by_name('Women')
@men = Gender.find_by_name('Men')
@unisex = Gender.find_by_name('Unisex')

Product.create!([
  {name: "women's sandal", gender_id: @women.id},
  {name: "men's sandal", gender_id: @men.id},
  {name: 'bikini', gender_id: @women.id},
  {name: 'sunscreen', gender_id: @unisex.id},
  {name: "women's boot", gender_id: @women.id},
  {name: "men's boot", gender_id: @men.id},
  {name: 'tent', gender_id: @unisex.id}
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
sunscreen = Product.find_by_name('sunscreen')
w_boot = Product.find_by_name("women's boot")
m_boot = Product.find_by_name("men's boot")
tent = Product.find_by_name('tent')

swimming = Activity.find_by_name('swimming')
boating = Activity.find_by_name('boating')
hiking = Activity.find_by_name('hiking')
yoga = Activity.find_by_name('yoga')
camping = Activity.find_by_name('camping')

swimming.products << [w_sandal, m_sandal, bikini, sunscreen]
boating.products << [w_sandal, m_sandal, bikini, sunscreen]
hiking.products << [sunscreen, w_boot, m_boot]
camping.products << [tent, w_boot, m_boot]