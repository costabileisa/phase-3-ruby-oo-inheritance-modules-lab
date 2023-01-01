require 'pry'
require_relative "./concerns/memorable"
require_relative "./concerns/find_by_name"
require_relative "./concerns/paramable"

class Artist
  extend Memorable
  extend Findable
  include Paramable

  attr_reader :songs
  @@artists = []

  def initialize
    @@artists << self
    @songs = []
  end

  def self.all
    @@artists
  end

  def add_song(song)
    @songs << song
  end

  def add_songs(songs)
    songs.each { |song| add_song(song) }
  end
end
