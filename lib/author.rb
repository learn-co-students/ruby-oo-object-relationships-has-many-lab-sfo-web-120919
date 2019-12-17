class Author
    attr_accessor :name, :author

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def posts
        my_posts = Post.all.select {|post| post.author == self}
    end

    def add_post(post)
        post.author = self
    end

    def add_post_by_title(title)
        add_post(Post.new(title))
    end

    def self.all
        @@all
    end

    def self.post_count
        Post.all.count
    end

end