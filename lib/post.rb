class Post
  attr_reader :author, :title

  @@all = []

  def initialize(title)
    @title = title
    @author
    save
  end

  def self.all
    @@all
  end

  def author=(new_author)
    @author = new_author
    new_author.posts << self
  end

  def author_name
    if @author
        @author.name
    end
  end 

  def save
    self.class.all << self
  end
end
