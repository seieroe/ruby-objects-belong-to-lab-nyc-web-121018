class Artist

  @@all = []

  attr_accessor :name

  def initialize(name)
    @name = ""

    @@all << self
  end

  def self.all
    @@all
  end

  def songs
    Song.all.select do |song|
      song.artist == self
    end
  end


end
