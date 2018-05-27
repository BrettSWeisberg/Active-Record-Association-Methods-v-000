class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre

  def get_genre_name
    self.genre.name
  end

  def drake_made_this

    Artist.find_or_create_by(name: "Drake")

    drake_id = Artist.find_by(name: "Drake").id
    binding.pry

    self.artist_id = drake_id

    # when this method is called it should assign the song's artist to Drake
  end
end
