class Book
  @@all = []
  attr_reader :title
  attr_accessor :author, :word_count

  def self.all
    @@all
  end

  def initialize(title, author, word_count)
    @title = title
    @author = author
    @word_count = word_count
    @@all << self
  end
end
