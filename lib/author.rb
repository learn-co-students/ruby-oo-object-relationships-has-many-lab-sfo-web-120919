class Author

    attr_accessor :name, :author, :post
    @@all = []
    def initialize(name)
        @name = name
        @posts = []
    end

    def self.all
        @@all 
    end

    def posts
        Post.all.select do |p|
            self == p.author
        end
    end

    def add_post(post)
        @posts << post
        post.author = self #this is what creates their relationship
    end

    def add_post_by_title(title)
        new_post = Post.new(title)
        add_post(new_post)
    end

    def self.post_count
        Post.all.length
    end


  


end