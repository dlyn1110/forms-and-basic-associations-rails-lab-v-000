class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genres
  has_many :notes

  def genre_name=(name)
    self.genre = Genre.find_or_create_by(name)
  end

  def genre_name
    self.genre.name
end
end
