class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre

  def get_genre_name
    self.genre.name
  end

  def drake_made_this
    if !!self.artist_id && self.artist.name != "Drake"
      self.build_artist(Artist.new(name: "Drake")
    end
  end
  
end