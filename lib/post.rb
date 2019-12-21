class Post
    attr_accessor :title
    attr_reader :author 
    @@all = []

    def initialize(title)
        @title = title
        @author
        save 
    end

    def author=(author)
        @author = author
        author.posts << self
    end

    def self.all
        @@all
    end

    def author_name
        if @author
            @author.name
        end    
    end

    def self.post_count
        @@all.length
    end

    def save
        @@all << self
    end
end





