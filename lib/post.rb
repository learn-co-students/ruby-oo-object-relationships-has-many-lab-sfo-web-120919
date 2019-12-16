class Post
    @@all = []
    attr_accessor :title, :author
    def initialize (title)
        @title = title
        @author
        @@all << self
    end
    def self.all
        @@all
    end
    def author
        @author
    end
    def author_name
        # binding.pry
        if @author == nil
            return nil
        end
        @author.name
    end
end