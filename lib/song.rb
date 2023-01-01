require 'pry'
require_relative "./concerns/memorable"
require_relative "./concerns/find_by_name"
require_relative "./concerns/paramable"

class Song
  extend Memorable
  extend Findable
  include Paramable
  attr_reader :artist

  @@songs = []

  def initialize
    @@songs << self
  end

  def self.all
    @@songs
  end

  def artist=(artist)
    @artist = artist
  end
end
