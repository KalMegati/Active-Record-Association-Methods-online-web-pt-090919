class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre

  def get_genre_name
    genre.name
  end

  def drake_made_this
    if Artist.all.map{|musician| musician.name}.include?("Drake")
      drake = Artist.new(name: "Drake")
      drake.save
    else
      
    end
    self.artist = drake
    drake
  end
end