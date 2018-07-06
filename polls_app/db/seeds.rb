# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all 
u1 = User.create!(name: "John")
u2 = User.create!(name: "Bill")
u3 = User.create!(name: "Ezekiel")
u4 = User.create!(name: "George")
u5 = User.create!(name: "Jedediah")

Poll.destroy_all 
p1 = Poll.create!(title: "What's the best stuff?", author: u1)
p2 = Poll.create!(title: "World Cup Stuff", author: u3)
p3 = Poll.create!(title: "LeBron James", author: u5)

Question.destroy_all 
q1 = Question.create!(body: "What's the best movie right now?", poll: p1)
q2 = Question.create!(body: "What's the best food in San Francisco?", poll: p1)
q3 = Question.create!(body: "Who's gonna win?", poll: p2)
q4 = Question.create!(body: "Who's the biggest loser?", poll: p2)
q5 = Question.create!(body: "Will the Lakers be good?", poll: p3)
q6 = Question.create!(body: "How many people hate LeBron?", poll: p3)

Answer_Choice.destroy_all 
a1 = Answer_Choice.create!(body: "The Avengers: Infinity War", questions: q1)
a2 = Answer_Choice.create!(body: "Forest Gump", questions: q1)
a3 = Answer_Choice.create!(body: "San Tung", questions: q2)
a4 = Answer_Choice.create!(body: "Subway", questions: q2)
a5 = Answer_Choice.create!(body: "Brazil", questions: q3)
a6 = Answer_Choice.create!(body: "England", questions: q3)
a7 = Answer_Choice.create!(body: "The United States", questions: q4)
a8 = Answer_Choice.create!(body: "Christiano Ronaldo", questions: q4)
a9 = Answer_Choice.create!(body: "Yes", questions: q5)
a10 = Answer_Choice.create!(body: "No", questions: q5)
a11 = Answer_Choice.create!(body: "All of them", questions: q6)
a12 = Answer_Choice.create!(body: "None of them", questions: q6)

Response.destroy_all
r1 = Response.create!(users: u1, answer_choices: a6)
r2 = Response.create!(users: u2, answer_choices: a7)
r3 = Response.create!(users: u3, answer_choices: a3)
r4 = Response.create!(users: u4, answer_choices: a5)
r5 = Response.create!(users: u5, answer_choices: a9)
r6 = Response.create!(users: u1, answer_choices: a1)

