class Song
  attr_accessor :name, :artist_name
  @@all = []
  def self.all
    @@all
  end
  def save
    self.class.all << self
  end
  def self.create
    @song=self.new
    @song.save
    @song
  end
  def self.new_by_name(song_name)
    @song= self.new
    @song.name= song_name
    @song
  end
  def self.create_by_name(song_name)
    @song = self.create
    @song.name = song_name
    @song
  end
  def self.find_by_name(song_name)
    @@all.each do |song|
      if @song.name == song_name
        return song
      elsif !@@all.include?(song_name)
         false
      end
    end
  end
  def self.find_or_create_by_name(name)
    if !@@all.include?(song.name == name)
    @song = self.create
    @song.name = song_name
    @song
    else
    @song.name
    end
    @song
  end
  def self.alphabetical
    @@all.sort
  end
  def self.new_from_filename(filename)
    @song=self.new_by_name(filename)
    @song.name
  end
  def self.create_from_filename(filename)
    self.create_by_name(filename)
  end
  def self.destroy_all
    @@all.clear
  end
end
