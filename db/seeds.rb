# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Course.destroy_all

course_1 = Course.create(title: "GEOMETRIE", description: "Oui on voit que c'est un triangle... mais prouve le !", user_id: 1)
course_2 =  Course.create(title: "ALGEBRE", description: "Bienvenue dans le monde des (in)égalités", user_id: 1)
course_3 =  Course.create(title: "PROBABILITE", description: "Ici pour gagner au loto ?", user_id: 1)


# Faudra mettre tout en anglais pour la real version ;)
