module SongsHelper
  def artist_select(song)
    if song.artist.nil?
      select_tag "song[artist_id]", options_from_collection_for_select(Artist.all, :id, :name)
    else
      # Add hidden field form_for :artist_id when we browse to
      # /artists/1/songs/new
      hidden_field_tag "song[aritst_id]", song.artist_id
    end
  end
end
