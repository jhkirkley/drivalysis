# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create!(email: "JFutrell@atlantaregional.com",
             password:              "ftr5uty5",
             admin:                  true)
User.create!(email: "john@johnkirkley.com",
             password:              "ghftfitd48",
             admin:                          true)

