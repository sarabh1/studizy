# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'date'

require "open-uri"

Message.destroy_all
Chatroom.destroy_all
Session.destroy_all
Course.destroy_all
User.destroy_all


user_1 = User.create!(email: "sarah@studizy.com", nickname: "shbahhar", password: "123456")
user_2 = User.create!(email: "ophe@studizy.com", nickname: "ophphng", password: "123456")

file_1 = URI.open('https://res.cloudinary.com/dowjpvgfk/image/upload/v1663095623/pexels-dawid-ma%C5%82ecki-21661_asdois.jpg')
course_1 = Course.create!(title: "GEOMETRY", description: "Geometry (from Ancient Greek γεωμετρία (geōmetría) 'land measurement', is, with arithmetic, one of the oldest branches of mathematics.", user: user_1)
course_1.photo.attach(io: file_1, filename: 'geometrie.jpeg', content_type: 'image/jpeg')
#attach est une méthode d'active storage ! (pour ça qu'on le fait en pls temps)

file_2 = URI.open('https://res.cloudinary.com/dowjpvgfk/image/upload/v1663091017/l7me3qjih824vj0kxkx9.jpg')
course_2 =  Course.create!(title: "ALGEBRA", description: "Algebra (from Arabic (al-jabr) 'reunion of broken parts,[1] bonesetting')[2] is one of the broad areas of mathematics.", user: user_1)
course_2.photo.attach(io: file_2, filename: 'algebre.jpeg', content_type: 'image/jpeg')

file_3 = URI.open('https://res.cloudinary.com/dowjpvgfk/image/upload/v1663095197/pexels-lil-artsy-1111597_tpmuq3.jpg')
course_3 =  Course.create!(title: "PROBABILITIES", description: "Probability is the branch of mathematics concerning numerical descriptions of how likely an event is to occur, or how likely it is that a proposition is true.", user: user_1)
course_3.photo.attach(io: file_3, filename: 'probabilite.jpeg', content_type: 'image/jpeg')

file_4 = URI.open('https://res.cloudinary.com/dowjpvgfk/image/upload/v1663095374/800px-Frans_Hals_-_Portret_van_Ren%C3%A9_Descartes_zwdpo6.jpg')
course_4 = Course.create!(title: "MATHS HISTORY", description: "
  Mathematics is used in science for modeling phenomena, which then allows predictions to be made from experimental laws.", user: user_1)
course_4.photo.attach(io: file_4, filename: 'histoire_math.jpeg', content_type: 'image/jpeg')


session_1 = Session.create!(course: course_2, name: "Exam - limits X", start_date: DateTime.new(2022, 9, 29, 14, 00), end_date: DateTime.new(2022, 9, 29, 16, 00))
session_2 = Session.create!(course: course_1, name: "Systems x + y", start_date: DateTime.new(2022, 9, 20, 10, 00), end_date: DateTime.new(2022, 9, 20, 12, 00))
session_3 = Session.create!(course: course_2, name: "{A + B} + 2", start_date: DateTime.new(2022, 9, 19, 8, 30), end_date: DateTime.new(2022, 9, 19, 10, 30))
session_4 = Session.create!(course: course_2, name: "ax + cy = d", start_date: DateTime.new(2022, 9, 30, 14, 00), end_date: DateTime.new(2022, 9, 30, 15, 00))
session_5 = Session.create!(course: course_3, name: "Dice Probabilities", start_date: DateTime.new(2022, 9, 23, 8, 30), end_date: DateTime.new(2022, 9, 23, 10, 30))
session_6 = Session.create!(course: course_3, name: "Loto game", start_date: DateTime.new(2022, 9, 22, 8, 00), end_date: DateTime.new(2022, 9, 22, 10, 00))
session_7 = Session.create!(course: course_4, name: "Da Vinci", start_date: DateTime.new(2022, 10, 3, 8, 45), end_date: DateTime.new(2022, 10, 3, 10, 15))
session_8 = Session.create!(course: course_4, name: "History of Thales", start_date: DateTime.new(2022, 9, 26, 14, 00), end_date: DateTime.new(2022, 9, 26, 16, 00))
session_9 = Session.create!(course: course_4, name: "TD : theory", start_date: DateTime.new(2022, 9, 23, 10, 00), end_date: DateTime.new(2022, 9, 23, 12, 00))
session_10 = Session.create!(course: course_3, name: "Casino games", start_date: DateTime.new(2022, 9, 26, 8, 00), end_date: DateTime.new(2022, 9, 26, 10, 00))
session_11 = Session.create!(course: course_3, name: "Train running late", start_date: DateTime.new(2022, 9, 27, 9, 00), end_date: DateTime.new(2022, 9, 27, 11, 00))
session_12 = Session.create!(course: course_1, name: "Calcul of surfaces", start_date: DateTime.new(2022, 9, 27, 14, 00), end_date: DateTime.new(2022, 9, 27, 17, 00))
session_13 = Session.create!(course: course_4, name: "Pythagore Theorem", start_date: DateTime.new(2022, 9, 21, 14, 00), end_date: DateTime.new(2022, 9, 21, 16, 00))
session_14 = Session.create!(course: course_2, name: "Functions - Basis", start_date: DateTime.new(2022, 9, 29, 8, 00), end_date: DateTime.new(2022, 9, 29, 10, 00))
session_15 = Session.create!(course: course_2, name: "Functions - theory", start_date: DateTime.new(2022, 9, 20, 10, 30), end_date: DateTime.new(2022, 9, 29, 12, 30))
session_16 = Session.create!(course: course_1, name: "Exam - Triangles", start_date: DateTime.new(2022, 9, 28, 8, 00), end_date: DateTime.new(2022, 9, 28, 10, 00))
session_17 = Session.create!(course: course_1, name: "Revisions Triangles", start_date: DateTime.new(2022, 9, 25, 10, 00), end_date: DateTime.new(2022, 9, 25, 12, 00))
session_18 = Session.create!(course: course_3, name: "Probabilties in work", start_date: DateTime.new(2022, 10, 4, 8, 30), end_date: DateTime.new(2022, 10, 04, 10, 30))
session_19 = Session.create!(course: course_1, name: "Squares", start_date: DateTime.new(2022, 9, 19, 8, 30), end_date: DateTime.new(2022, 9, 19, 10, 30))
session_20 = Session.create!(course: course_4, name: "Vasco de Gama", start_date: DateTime.new(2022, 9, 16, 8, 30), end_date: DateTime.new(2022, 9, 16, 10, 30))
session_21 = Session.create!(course: course_2, name: "Arythmetic", start_date: DateTime.new(2022, 9, 20, 8, 30), end_date: DateTime.new(2022, 9, 20, 10, 30))
session_22 = Session.create!(course: course_3, name: "Probabilities - Intro", start_date: DateTime.new(2022, 9, 14, 8, 30), end_date: DateTime.new(2022, 9, 14, 10, 30))
session_23 = Session.create!(course: course_1, name: "Circles", start_date: DateTime.new(2022, 9, 15, 8, 30), end_date: DateTime.new(2022, 9, 15, 10, 30))
session_24 = Session.create!(course: course_2, name: "Arythmetic", start_date: DateTime.new(2022, 9, 13, 8, 30), end_date: DateTime.new(2022, 9, 13, 10, 30))

session_25 = Session.create!(course: course_2, name: "Homework - Algebra", start_date: DateTime.new(2022, 4, 14, 00), end_date: DateTime.new(2022, 10, 04, 15, 00))
session_26 = Session.create!(course: course_1, name: "Circles area", start_date: DateTime.new(2022, 10, 05, 8, 30), end_date: DateTime.new(2022, 10, 5, 10, 30))
session_27 = Session.create!(course: course_2, name: "{A + B} ~2Z", start_date: DateTime.new(2022, 10, 05, 15, 30), end_date: DateTime.new(2022, 10, 5, 17, 30))
session_28 = Session.create!(course: course_2, name: "Functions & systems", start_date: DateTime.new(2022, 10, 6, 14, 00), end_date: DateTime.new(2022, 10, 6, 15, 00))
session_29 = Session.create!(course: course_3, name: "Exam - Part 2", start_date: DateTime.new(2022, 10, 7, 14, 00), end_date: DateTime.new(2022, 10, 7, 16, 00))
session_30 = Session.create!(course: course_3, name: "TD: Probs", start_date: DateTime.new(2022, 10, 7, 8, 00), end_date: DateTime.new(2022, 10, 7, 10, 00))
session_31 = Session.create!(course: course_4, name: "History of sinus", start_date: DateTime.new(2022, 10, 10, 8, 45), end_date: DateTime.new(2022, 10, 10, 10, 15))
session_32 = Session.create!(course: course_1, name: "Calculation", start_date: DateTime.new(2022, 10, 10, 14, 00), end_date: DateTime.new(2022, 10, 10, 16, 00))
session_33 = Session.create!(course: course_4, name: "Homework - Theorems", start_date: DateTime.new(2022, 10, 10, 16, 00), end_date: DateTime.new(2022, 10, 10, 17, 00))



chatroom_1 = Chatroom.create!(name: "General")
chatroom_2 = Chatroom.create!(name: "Geometry")
chatroom_3 = Chatroom.create!(name: "Algebra")
chatroom_4 = Chatroom.create!(name: "Probabilities")
chatroom_5 = Chatroom.create!(name: "History of Maths")
chatroom_6 = Chatroom.create!(name: "Professors room")
