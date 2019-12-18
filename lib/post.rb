class Post
  attr_accessor :title, :author

  @@all = []

  def initialize(title)
    @title = title
    @@all << self
  end

  # def author=(new_author)
  #   @author = new_author
  #    new_author.posts << self
  # end

  def self.all
    @@all
  end

  def author_name
    if self.author ==  nil
      return nil
    else 
      return author.name
    end
  end
end