class Post

    attr_accessor :author, :post, :title, :name

    @@all = []
    def initialize(title)
        @@all << self
        @title = title
    end

    def self.all
        @@all 
    end

    def author_name
        if self.author
            @author_name = author.name
        else
            return nil
        end

    end

    def name

    end

end