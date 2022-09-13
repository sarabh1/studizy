# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'date'


Course.destroy_all

course_1 = Course.create(title: "GEOMETRIE", description: "Oui on voit que c'est un triangle... mais prouve le !", user_id: 1)
course_2 =  Course.create(title: "ALGEBRE", description: "Bienvenue dans le monde des (in)égalités", user_id: 1)
course_3 =  Course.create(title: "PROBABILITE", description: "Ici pour gagner au loto ?", user_id: 1)
course_4 = Course.create(title: "HISTOIRE DES MATHS", description: "Des maths mais sans se casser la tête", user_id: 1)



# Faudra mettre tout en anglais pour la real version ;)
# session_1 = Session.create(start_date: DateTime.new(2022, 9, 15, 8), end_date: DateTime.new(2022, 9, 15, 10), status: 2, course_id: 44)

session_1 = Session.create(start_date: DateTime.new(2022,9,15,8,30), end_date: DateTime.new(2022,9,15,10,30), status: 1, course_id: 54)
session_2 = Session.create(start_date: DateTime.new(2022,9,16,8,30), end_date: DateTime.new(2022,9,16,8,30), status: 1, course_id: 55)
session_3 = Session.create(start_date: DateTime.new(2022,9,19,10,30), end_date: DateTime.new(2022,9,19,12,30), status: 1, course_id: 54)
session_4 = Session.create(start_date: DateTime.new(2022,9,20,8,30), end_date: DateTime.new(2022,9,20,8,30), status: 1, course_id: 53)
