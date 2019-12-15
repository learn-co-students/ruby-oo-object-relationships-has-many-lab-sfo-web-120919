class Author
  attr_accessor :name, :posts

  @@all = []

  def initialize(name)
    @name = name
    @posts = []
    save
  end

  def self.all
    @@all
  end

  def add_post(new_post)
    @posts << new_post
    new_post.author = self
  end

  def add_post_by_title(title)
    add_post(Post.new(title))
  end

  def self.post_count
    all_posts = []
    @@all.each do |author|
      all_posts.concat(author.posts)
    end
    all_posts.uniq.count
  end

  def save
    self.class.all << self
  end
end
