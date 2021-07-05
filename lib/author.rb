class Author 
    attr_accessor :name, :post, :title
    @@all = []
    def initialize(name)
        @name = name 
        @posts = []
        self.class.all << self
    end

    def posts
        @posts
    end

    def add_post(post)
        @posts << post
        post.author = self
    end

    def add_post_by_title(title)
        post = Post.new(title)
        @posts << post
        post.author = self
    end
    
    def self.post_count
        total_post_count = []
        @@all.each do |author|
          total_post_count.concat(author.posts)
        end
          total_post_count.uniq.count
      end

    def self.all
        @@all
    end

end