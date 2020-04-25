class Post
    @@all = []
    attr_accessor :title, :author
    def initialize(title)
        @title = title
        @@all << self
    end

    def author_name
        if self.author then self.author.name end
    end

    def self.all
        @@all
    end
end
