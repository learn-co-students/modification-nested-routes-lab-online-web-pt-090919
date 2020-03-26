# module ArtistsHelper
#   def display_artist(song)
#     song.artist.nil? ? link_to("Add Artist", edit_song_path(song)) : link_to(song.artist_name, artist_path(song.artist))
#   end

#   def artist_select(artist, song)
#     if artist
#         artist.name
#     else
#         select_tag "song[artist_id]", options_from_collection_for_select(Artist.all, :id, :name)
#     end
#   end
# end


module ArtistsHelper
  def display_artist(song)
    song.artist.nil? ? link_to("Add Artist", edit_song_path(song)) : link_to(song.artist_name, artist_path(song.artist))
  end

  # Display dropdown of artists, with name if editing through nested
  def artist_select(song, path)
    if song.artist && path == "nested"
      hidden_field_tag "song[artist_id]", song.artist_id
    else
      select_tag "song[artist_id]", options_from_collection_for_select(Artist.all, :id, :name)
    end
  end

  # Display name if editing through nested
  def display_name(song, path)
    if song.artist && path == "nested"
      song.artist.name
    end
  end
end


# <%= form_for @song  do |f| %>
#   <%= artist_select(@song.artist, @song) %>

#   <%= f.label :title %>
#   <%= f.text_field :title %><br>
  
#   <%= f.label :artist_name %>
#   <%= f.text_field :artist_name %>
#   <br />

#   <%= f.submit %>
# <% end %>