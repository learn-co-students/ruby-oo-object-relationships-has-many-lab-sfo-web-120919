class Post
    attr_accessor :title, :author
    @@all = []
    def initialize(title)
        @title = title
        @posts = []
        self.class.all << self
    end

    def author=(author)
        @author = author
        author.posts << self
    end


    def author_name
        if @author
          @author.name
        end
      end
     

    def self.all
        @@all
    end
end