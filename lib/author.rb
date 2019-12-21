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

    def posts 
        Post.all.select {|post| post.author == self}
    end

    def add_post(post)
        @posts << post
        post.author = self
    end

    def add_post_by_title(title)
        new_post = Post.new(title)
        add_post(new_post)
    end

    def self.post_count
        Post.all.length
    end

    def save
        @@all << self
    end
end


  
