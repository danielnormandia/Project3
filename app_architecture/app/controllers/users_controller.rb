class UsersController < ApplicationController
  def spotify
    @user = RSpotify::User.new(request.env['omniauth.auth'])
    # Now you can access user's private data, create playlists and much more

    # Access private data
    @user.country #=> "US"
    @user.email   #=> "example@email.com"
    @user.display_name
    @user.credentials

    # # Create playlist in user's Spotify account
    # playlist = @user.create_playlist!('my-awesome-playlist')

    # # Add tracks to a playlist in user's Spotify account
    # tracks = RSpotify::Track.search('Know')
    # playlist.add_tracks!(tracks)
    # playlist.tracks.first.name #=> "Somebody That I Used To Know"

    # # Access and modify user's music library
    # @user.save_tracks!(tracks)
    # @user.saved_tracks.size #=> 20
    # @user.remove_tracks!(tracks)

    # albums = RSpotify::Album.search('launeddas')
    # @user.save_albums!(albums)
    # @user.saved_albums.size #=> 10
    # @user.remove_albums!(albums)

    # Use Spotify Follow features
    # @user.follow(playlist)
    # @user.follows?(artists)
    # @user.unfollow(users)

    # Get user's top played artists and tracks
    # @user.top_artists #=> (Artist array)
    # @user.top_tracks(time_range: 'short_term') #=> (Track array)

    # Check doc for more
  end
end
