# == Schema Information
#
# Table name: artists
#
#  id   :integer          not null, primary key
#  name :string
#

class Artist < ActiveRecord::Base
  has_many :songs
  has_many :genres, through: :songs

  def get_genre_of_first_song
    genres.first
  end

  def song_count
    songs.length
  end

  def genre_count
    genres.length
  end
end
