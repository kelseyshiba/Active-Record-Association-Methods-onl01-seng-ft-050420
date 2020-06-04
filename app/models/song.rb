class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre

  def get_genre_name
    self.genre.name
  end

  def drake_made_this
    self.build_artist(name: "Drake") if !self.artist_id
      # if Artist.all.include?("Drake") == false
        drake = Artist.create(name: "Drake") 
      # #   self.artist = drake
      # end
  end
  
end