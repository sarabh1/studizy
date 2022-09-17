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


file_1 = URI.open('https://res.cloudinary.com/dowjpvgfk/image/upload/v1663095623/pexels-dawid-ma%C5%82ecki-21661_asdois.jpg')
course_1 = Course.create(title: "GEOMETRY", description: "Geometry (from Ancient Greek γεωμετρία (geōmetría) 'land measurement', is, with arithmetic, one of the oldest branches of mathematics.", user_id: 1)
course_1.photo.attach(io: file_1, filename: 'geometrie.jpeg', content_type: 'image/jpeg')
#attach est une méthode d'active storage ! (pour ça qu'on le fait en pls temps)

file_2 = URI.open('https://res.cloudinary.com/dowjpvgfk/image/upload/v1663091017/l7me3qjih824vj0kxkx9.jpg')
course_2 =  Course.create(title: "ALGEBRA", description: "Algebra (from Arabic (al-jabr) 'reunion of broken parts,[1] bonesetting')[2] is one of the broad areas of mathematics.", user_id: 1)
course_2.photo.attach(io: file_2, filename: 'algebre.jpeg', content_type: 'image/jpeg')

file_3 = URI.open('https://res.cloudinary.com/dowjpvgfk/image/upload/v1663095197/pexels-lil-artsy-1111597_tpmuq3.jpg')
course_3 =  Course.create(title: "PROBABILITIES", description: "Probability is the branch of mathematics concerning numerical descriptions of how likely an event is to occur, or how likely it is that a proposition is true.", user_id: 1)
course_3.photo.attach(io: file_3, filename: 'probabilite.jpeg', content_type: 'image/jpeg')

file_4 = URI.open('https://res.cloudinary.com/dowjpvgfk/image/upload/v1663095374/800px-Frans_Hals_-_Portret_van_Ren%C3%A9_Descartes_zwdpo6.jpg')
course_4 = Course.create(title: "MATHS HISTORY", description: "
  Mathematics is used in science for modeling phenomena, which then allows predictions to be made from experimental laws.", user_id: 1)
course_4.photo.attach(io: file_4, filename: 'histoire_math.jpeg', content_type: 'image/jpeg')


session_1 = Session.create(course: course_1, name: "Pythagore theorem", start_date: Faker::Time.between(from: 2.days.ago, to: DateTime.now + 7), end_date: Faker::Time.between(from: 2.days.ago, to: DateTime.now + 10))
session_2 = Session.create(course: course_1, name: "Systems x + y", start_date: Faker::Time.between(from: 2.days.ago, to: DateTime.now + 7), end_date: Faker::Time.between(from: 2.days.ago, to: DateTime.now + 10))
session_3 = Session.create(course: course_2, name: "{A + B} + 2", start_date: Faker::Time.between(from: 2.days.ago, to: DateTime.now + 2), end_date: Faker::Time.between(from: 2.days.ago, to: DateTime.now + 10))
session_4 = Session.create(course: course_2, name: "ax + cy = d", start_date: Faker::Time.between(from: DateTime.now + 5, to: DateTime.now + 8), end_date: Faker::Time.between(from: DateTime.npw + 6, to: DateTime.now + 12))
session_5 = Session.create(course: course_3, name: "Dice Probabilities", start_date: Faker::Time.between(from: 2.days.ago, to: DateTime.now), end_date: Faker::Time.between(from: 2.days.ago, to: DateTime.now))
session_6 = Session.create(course: course_3, name: "Loto game", start_date: Faker::Time.between(from: 2.days.ago, to: DateTime.now + 2), end_date: Faker::Time.between(from: 2.days.ago, to: DateTime.now + 10))
session_7 = Session.create(course: course_4, name: "Da Vinci", start_date: Faker::Time.between(from: 2.days.ago, to: DateTime.now), end_date: Faker::Time.between(from: 2.days.ago, to: DateTime.now))
session_8 = Session.create(course: course_4, name: "History of Thales", start_date: Faker::Time.between(from: 2.days.ago, to: DateTime.now), end_date: Faker::Time.between(from: 2.days.ago, to: DateTime.now))
session_9 = Session.create(course: course_4, name: "Egypt theory", start_date: Faker::Time.between(from: Date.today + 1, to: Date.today + 2), end_date: Faker::Time.between(from: Date.today, to: Date.today + 6))
session_10 = Session.create(course: course_3, name: "Casino games", start_date: Faker::Time.between(from: Date.today + 1, to: Date.today + 2), end_date: Faker::Time.between(from: Date.today, to: Date.today + 6))
session_11 = Session.create(course: course_3, name: "Train running late", start_date: Faker::Time.between(from: Date.today + 6, to: Date.today + 8), end_date: Faker::Time.between(from: Date.today + 6, to: Date.today + 8))
session_12 = Session.create(course: course_1, name: "Calcul of surfaces", start_date: Faker::Time.between(from: Date.today + 1, to: Date.today + 2), end_date: Faker::Time.between(from: Date.today, to: Date.today + 6))
session_13 = Session.create(course: course_4, name: "Contemporain profesors", start_date: Faker::Time.between(from: Date.today + 1, to: Date.today + 2), end_date: Faker::Time.between(from: Date.today, to: Date.today + 6))
session_14 = Session.create(course: course_2, name: "functions - Basis", start_date: Faker::Time.between(from: Date.today + 1, to: Date.today + 2), end_date: Faker::Time.between(from: Date.today, to: Date.today + 6))
session_15 = Session.create(course: course_2, name: "functions - theory", start_date: Faker::Time.between(from: Date.today + 1, to: Date.today + 2), end_date: Faker::Time.between(from: Date.today, to: Date.today + 6))
session_16 = Session.create(course: course_2, name: "Theorems", start_date: Faker::Time.between(from: Date.today, to: Date.today), end_date: Faker::Time.between(from: Date.today, to: Date.today))
session_17 = Session.create(course: course_1, name: "Triangles", start_date: Faker::Time.between(from: Date.today, to: Date.today), end_date: Faker::Time.between(from: Date.today, to: Date.today))
session_18 = Session.create(course: course_3, name: "Probabilties in work", start_date:Date.today, end_date:Date.today)
