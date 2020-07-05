module SongsHelper
  def artist_select(song)
    if !song.artist.nil?
      song.artist.name
      hidden_field_tag 'song_artist_id', song.artist_id
    else
      label_tag 'Artists', 'song_artist_id'
      select_tag 'song_artist_id', Artist.all, options_from_collection_for_select: [:id, :name]
    end
  end

end
