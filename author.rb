class Author
  @@all = []
  attr_reader :name

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @@all << self
  end

    def write_book(title, word_count)
      Book.new(title, self, word_count)
      Book.all << self
    end

    def all_books_by_one_author
      Book.all.select {|author| author.author == self}
    end

  def total_words
    all_books_by_one_author.collect {|book| book.word_count}.reduce(:+)
  end

  def self.most_words
    # longer version
    Author.all.max_by{|author| author.total_words}
    # best_so_far = nil
    # best_count = 0
    # Author.all.each do |author|
    #   if author.total_words > best_count
    #     best_so_far = author
    #   end
    # end
    # best_so_far
  end


  end

    def max_words
      self.all.map{|author| author.total_words}.max
    end

  def self.most_words
      self.all.find{|author| author.total_words == max_words}
  end
