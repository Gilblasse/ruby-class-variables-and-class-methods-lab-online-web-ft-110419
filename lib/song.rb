require 'pry'

class Song 
  attr_accessor :name, :artist, :genre
  @@artists = []
  @@genres = []
  @@count = 0
  
  def self.count
    @@count
  end
  
  def self.artists
    @@artists.uniq
  end
  
  def self.genres
    @@genres.uniq
  end
  
  def self.genre_count
    @@genres.each_with_object({}) do |genre, hash|
	    hash[genre] ||= 0
	    hash[genre] += 1
    end
  end
  
  def self.artist_count
    @@artists.each_with_object({}) do |genre, hash|
	    hash[genre] ||= 0
	    hash[genre] += 1
    end
  end
  
  def initialize(name,artist,genre)
     @@count += 1
     @@artists << artist
     @@genres  << genre
     @name = name
     @artist = artist
     @genre = genre
  end
  
  
end