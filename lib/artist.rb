class Artist
  attr_accessor :name, :songs


  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    song.artist = self
  end

  def add_song_by_name(song_name)
    singer = Song.new(song_name)
    self.songs << song
    add_song(singer)
  end

  def songs
    Song.all.select do |song|
      song.artist == self
  end

  def self.song_count
    @@song_count
  end
end