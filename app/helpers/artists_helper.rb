module ArtistsHelper
  def display_artist(song)
    song.artist.nil? ? link_to("Add Artist", edit_song_path(song)) : link_to(song.artist_name, artist_path(song.artist))
  end
  
  def artist_select(i, par)
    if par.include?(par[:artist_id])
      artist = Artist.find(par[:artist_id])
      link_to artist.name, artist_path(artist)
    else
      i.select :artist_id, Artist.all.map{|art|art.name}, include_blank: true
    end
  end
end
