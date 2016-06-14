class Artist
  attr_accessor :name
  attr_reader :songs

  @@song_count = 0

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    song.artist = self
    @songs << song
    @@song_count += 1
  end

  def add_song_by_name(title)
    new_song = Song.new(title)
    new_song.artist = self
    @songs << new_song
    @@song_count += 1
  end

  def self.song_count
    @@song_count
  end
end