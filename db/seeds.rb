# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'date'

require "open-uri"

Course.destroy_all
Session.destroy_all

file_1 = URI.open('https://res.cloudinary.com/dowjpvgfk/image/upload/v1663095623/pexels-dawid-ma%C5%82ecki-21661_asdois.jpg')
course_1 = Course.create(title: "GEOMETRIE", description: "Oui on voit que c'est un triangle... mais prouve le !", user_id: 1)
course_1.photo.attach(io: file_1, filename: 'geometrie.jpeg', content_type: 'image/jpeg')
#attach est une méthode d'active storage ! (pour ça qu'on le fait en pls temps)

file_2 = URI.open('https://res.cloudinary.com/dowjpvgfk/image/upload/v1663091017/l7me3qjih824vj0kxkx9.jpg')
course_2 =  Course.create(title: "ALGEBRE", description: "Bienvenue dans le monde des (in)égalités", user_id: 1)
course_2.photo.attach(io: file_2, filename: 'algebre.jpeg', content_type: 'image/jpeg')

file_3 = URI.open('https://res.cloudinary.com/dowjpvgfk/image/upload/v1663095197/pexels-lil-artsy-1111597_tpmuq3.jpg')
course_3 =  Course.create(title: "PROBABILITE", description: "Ici pour gagner au loto ?", user_id: 1)
course_3.photo.attach(io: file_3, filename: 'probabilite.jpeg', content_type: 'image/jpeg')

file_4 = URI.open('https://res.cloudinary.com/dowjpvgfk/image/upload/v1663095374/800px-Frans_Hals_-_Portret_van_Ren%C3%A9_Descartes_zwdpo6.jpg')
course_4 = Course.create(title: "HISTOIRE DES MATHS", description: "Des maths mais sans se casser la tête", user_id: 1)
course_4.photo.attach(io: file_4, filename: 'histoire_math.jpeg', content_type: 'image/jpeg')


session_1 = Session.create(course: course_1, start_date: Date.today - 6, end_date: Date.today - 1, status: "1",)


# Faudra mettre tout en anglais pour la real version ;)
# session_1 = Session.create(start_date: DateTime.new(2022, 9, 15, 8), end_date: DateTime.new(2022, 9, 15, 10), status: 2, course_id: 44)

# session_1 = Session.create(start_date: DateTime.new(2022,9,15,8,30), end_date: DateTime.new(2022,9,15,10,30), status: 1, course_id: 54)
# session_2 = Session.create(start_date: DateTime.new(2022,9,16,8,30), end_date: DateTime.new(2022,9,16,8,30), status: 1, course_id: 55)
# session_3 = Session.create(start_date: DateTime.new(2022,9,19,10,30), end_date: DateTime.new(2022,9,19,12,30), status: 1, course_id: 54)
# session_4 = Session.create(start_date: DateTime.new(2022,9,20,8,30), end_date: DateTime.new(2022,9,20,8,30), status: 1, course_id: 53)
