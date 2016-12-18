# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.delete_all
Mood.delete_all
Comment.delete_all

200.times do
  User.create(display_name: Faker::Internet.user_name,
              email: Faker::Internet.email,
              country: Faker::Address.country,
              followers: Faker::Crypto.md5,
              images: Faker::Avatar.image,
              credentials: Faker::Crypto.md5,
              created_at: Time.now,
              updated_at: Time.now)
end

70.times do
  Mood.create(title: Faker::Hipster.word,
              user_id: (1..200).to_a.sample,
              created_at: Time.now,
              updated_at: Time.now)
end

1000.times do
  Comment.create(content: Faker::Lorem.paragraph(2),
                 user_id: (1..200).to_a.sample,
                 mood_id: (1..70).to_a.sample,
                 created_at: Time.now,
                 updated_at: Time.now)
end


