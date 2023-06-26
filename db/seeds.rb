# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

r1 = Restaurant.create(name: "Chill Vibes", address: "Ng'ong rd")
r2 = Restaurant.create(name: "Chicken_inn", address: "Junction Mall ")
r3 = Restaurant.create(name: "Sarova Woodlands", address: "Nakuru, Section 58 ")
r4 = Restaurant.create(name: "Olkaria", address: "Junction Mall ")
r5 = Restaurant.create(name: "Kibandaski", address: "Kilimani ")



p1 = Pizza.create(name: "Peperoni", ingredients: "Dough, Tomato Sauce, Cheese, Pepperoni")
p2 = Pizza.create(name: "Cheese", ingredients: "Dough, Tomato Sauce, Cheese")
p3 = Pizza.create(name: "Chicken-tikka", ingredients: "Dough, Tomato sauce, Boneless chicken breast") 
p4 = Pizza.create(name: "Chicken peri peri", ingredients: "Dough, Periperi sauce, Chicken, Tomatoes")
p5 = Pizza.create(name: "Hawaiian", ingredients: "Dough, Canadian bacon, Pizza sauce, Marinara sauce")


RestaurantPizza.create(price: 10, restaurant_id: r1.id, pizza_id: p1.id)
RestaurantPizza.create(price: 15, restaurant_id: r4.id, pizza_id: p1.id)
RestaurantPizza.create(price: 12, restaurant_id: r1.id, pizza_id: p2.id)
RestaurantPizza.create(price: 17, restaurant_id: r4.id, pizza_id: p2.id)
RestaurantPizza.create(price: 14, restaurant_id: r2.id, pizza_id: p3.id)
RestaurantPizza.create(price: 14, restaurant_id: r2.id, pizza_id: p4.id)
RestaurantPizza.create(price: 20, restaurant_id: r3.id, pizza_id: p3.id)
RestaurantPizza.create(price: 19, restaurant_id: r3.id, pizza_id: p5.id) 
RestaurantPizza.create(price: 25, restaurant_id: r5.id, pizza_id: p4.id)
RestaurantPizza.create(price: 23, restaurant_id: r5.id, pizza_id: p5.id)