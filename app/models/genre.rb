# == Schema Information
#
# Table name: genres
#
#  id   :integer          not null, primary key
#  name :string
#

class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    songs.length
  end

  def artist_count
    artists.length
  end

  def all_artist_names
    artists.map(&:name)
  end
end
