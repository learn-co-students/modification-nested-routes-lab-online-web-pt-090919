module SongsHelper
def artist_select(song)
  song.artist.nil? ? select_tag "song[artist_id]", options_from_collection_for_select(Artist.all, :id, :name) : hidden_field_tag "song[artist_id]", song.artist_id
end
end
