# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.destroy_all
Video.destroy_all
Photo.destroy_all

test = User.create!(name: 'test', email: 'test@test.com', password: 'test', admin: false, bio: 'blahblah blah blah', video:'google.com')

testvideo = Video.create!(name: 'video title', link:'google.com', final: true)
testphoto = Photo.create!(name: 'video title', src:'google.com')

test.videos << testvideo
test.photos << testphoto
