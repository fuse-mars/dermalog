# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Doctor.create([{ name: 'SuperDoctor', state: 'AC', email: 'sd@g.com', password: '1234', password_confirmation: '1234', license:'1234', admin: true }])
Doctor.create([{ name: 'Jack', state: 'PB', password: '1111', email: 'jack@g.com', password_confirmation: '1111', license:'1111', admin: false }])