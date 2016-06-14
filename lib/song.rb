class Song
  attr_accessor :artist, :name

  def initialize(name)
    @name = name
  end

  def artist_name
    if @artist
      @artist.name
    else
      nil
    end
  end
end