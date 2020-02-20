module ArtistsHelper
  # display link to edit song if artist empty
  # display link to artist page if artist not empty
  def display_artist(song)
    # song.artist.nil? ? link_to("Add Artist", edit_song_path(song)) : link_to(song.artist_name, artist_path(song.artist))
    if song.artist.nil? || song.artist_name.empty?
      link_to("Add Artist", edit_song_path(song))
    else
      link_to(song.artist_name, artist_path(song.artist))
    end
  end
end