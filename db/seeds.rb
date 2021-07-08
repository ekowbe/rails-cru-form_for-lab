# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# create ten songs with the same artist
artist = Artist.create(name: Faker::Artist.name, bio: Faker::Lorem.paragraph)
10.times do
    genre = Genre.create(name: Faker::GreekPhilosophers.name)
    Song.create(name: Faker::FunnyName.name, artist_id: artist.id, genre_id: genre.id)

end

# create ten songs with ten more random artists

10.times do
    artist = Artist.create(name: Faker::Artist.name, bio: Faker::Lorem.paragraph)
    genre = Genre.create(name: Faker::GreekPhilosophers.name)
    Song.create(name: Faker::FunnyName.name, artist_id: artist.id, genre_id: genre.id)
end
