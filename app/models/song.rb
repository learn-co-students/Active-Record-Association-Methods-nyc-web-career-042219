# == Schema Information
#
# Table name: songs
#
#  id        :integer          not null, primary key
#  name      :string
#  artist_id :integer
#  genre_id  :integer
#

class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre

  def get_genre_name
    genre.name
  end

  def drake_made_this
    # when this method is called it should assign the song's artist to Drake
    Artist.create(name: 'Drake')
  end
end
