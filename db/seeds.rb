Mood.delete_all
Comment.delete_all

20.times do
  User.create(display_name: Faker::Name.name,
              spotify_id: Faker::Internet.user_name,
              email: Faker::Internet.email,
              country: Faker::Address.country,
              followers: Faker::Crypto.md5,
              images: Faker::Avatar.image,
              credentials: Faker::Crypto.md5,
              created_at: Time.now,
              updated_at: Time.now)
end

5.times do
  Mood.create(title: Faker::Hipster.word,
              user_id: (1..20).to_a.sample,
              created_at: Time.now,
              updated_at: Time.now)
end

RSpotify.authenticate(SPOTIFY_CLIENT_ID, SPOTIFY_CLIENT_SECRET)
randTrackArr = RSpotify::Recommendations.generate(limit: 50, seed_genres: ['blues', 'funk']).tracks

randTrackArr.each do |randTrack|
  track_name = randTrack.name
  artist_name = randTrack.artists[0].name
  uri = randTrack.uri
  Comment.create(content: Faker::Lorem.paragraph(2),
                 user_id: (1..20).to_a.sample,
                 mood_id: (1..5).to_a.sample,
                 created_at: Time.now,
                 updated_at: Time.now,
                 artist_name: artist_name,
                 track_name: track_name,
                 uri: uri)
end
