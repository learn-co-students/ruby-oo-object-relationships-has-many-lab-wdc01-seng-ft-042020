class Post
    attr_accessor :title
    attr_reader :author

    @@all = []

    def initialize(title)
        @title = title
        @@all << self
    end

    def author=(author)
        author.posts << self
        @author = author
    end

    def author_name
        self.author ? self.author.name : nil
    end

    def self.all
        @@all
    end

end
