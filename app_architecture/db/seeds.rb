# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

200.times do
  User.create(first_name: Faker::Name.first_name,
              last_name: Faker::Name.last_name,
              user_name: Faker::Internet.user_name,
              email: Faker::Internet.email,
              picture: Faker::Avatar.image,
              password: Faker::Internet.password,
              created_at: Time.now)
end

70.times do
  Mood.create(title: Faker::Hipster.word,
              created_at: Time.now,
              updated_at: Time.now,
              slug: Faker::Internet.slug(nil, '_'))
end

1000.times do
  Comment.create(content: Faker::Lorem.paragraph(2),
                 created_at: Time.now,
                 updated_at: Time.now,
                 user_id: (1..200).to_a.sample,
                 mood_slug: Faker::Internet.slug(nil, '_'))

end
