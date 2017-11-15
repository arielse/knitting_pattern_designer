# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Pattern.destroy_all
PatternRow.destroy_all

u1 = User.create(username: 'hermione', email: 'hermione@hogwarts.edu.uk', password: 'gryffindor')
u2 = User.create(username: 'marple', email: 'marple@ladydetective.co.uk', password: 'murder')
u3 = User.create(username: 'molly', email: 'molly.weasley@theburrow.com', password: 'family')
u4 = User.create(username: 'defarge', email: 'madame.defarge@dickens.com', password: 'guilty')

p1 = Pattern.create(user_id: u1.id, name: 'lace', description: 'lace pattern', status: '')

r1 = PatternRow.create(pattern_id: p1.id, row: ['', '', '', '', '', '', '', '', '', ''])
r2 = PatternRow.create(pattern_id: p1.id, row: ['', '', '', '', '', '', '', '', '', ''])
r3 = PatternRow.create(pattern_id: p1.id, row: ['', '', '', '', '', '', '', '', '', ''])
r4 = PatternRow.create(pattern_id: p1.id, row: ['', '', '', '', '', '', '', '', '', ''])
r5 = PatternRow.create(pattern_id: p1.id, row: ['', '', '', '', '', '', '', '', '', ''])
