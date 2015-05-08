# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

salads = Category.create(name: "Salāti")
soups = Category.create(name: "Zupas")
seconds = Category.create(name: "Otrie ēdieni")
desert = Category.create(name: "Deserti")
drinks = Category.create(name: "Dzērieni")

Product.create(name: "Cēzera salāti", price: 800, category_id: salads.id)
Product.create(name: "Garneļu salāti", price: 700, category_id: salads.id)
Product.create(name: "Gaļas salāti", price: 400, category_id: salads.id)
Product.create(name: "Siera salāti", price: 500, category_id: salads.id)

Product.create(name: "Cola", price: 200, category_id: drinks.id)
Product.create(name: "Ūdens", price: 100, category_id: drinks.id)
Product.create(name: "Alus", price: 400, category_id: drinks.id)
Product.create(name: "Sula", price: 200, category_id: drinks.id)

Product.create(name: "Spageti ar malto gaļu", price: 500, category_id: seconds.id)
Product.create(name: "Lazanja", price: 400, category_id: seconds.id)
Product.create(name: "Karbonāde ar frī kartupeļiem", price: 600, category_id: seconds.id)
Product.create(name: "Liellops ungāru gaumē ar griķiem", price: 800, category_id: seconds.id)
Product.create(name: "Vista karija mērcē ar rīsiem", price: 500, category_id: seconds.id)
Product.create(name: "Laša fileja ar fetas siera mērci un grillētiem dārzeņiem", price: 1000, category_id: seconds.id)

Product.create(name: "Rupjmaizes kārtojums ar putukrējumu", price: 300, category_id: desert.id)
Product.create(name: "Šokolādes fondants ar saldējumu", price: 500, category_id: desert.id)
Product.create(name: "Biezpiena krēms ar ogu mērci", price: 400, category_id: desert.id)
Product.create(name: "Cepts saldējums", price: 600, category_id: desert.id)
Product.create(name: "Saldējums ar augļiem", price: 200, category_id: desert.id)

Product.create(name: "Soļanka", price: 500, category_id: soups.id)
Product.create(name: "Krēmzupa", price: 400, category_id: soups.id)
Product.create(name: "Frikadeļļu zupa", price: 200, category_id: soups.id)
Product.create(name: "Zivju zupa", price: 300, category_id: soups.id)