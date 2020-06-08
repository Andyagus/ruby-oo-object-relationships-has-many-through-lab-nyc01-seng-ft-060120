class Genre
	attr_accessor :name
	@@all = []
	def initialize(name)
		@name = name
		@@all << self
	end

	def songs 
		Song.all
	end

	def self.all
		@@all
	end

	def artists
		Song.all.map{|songs|songs.artist}
	end
end