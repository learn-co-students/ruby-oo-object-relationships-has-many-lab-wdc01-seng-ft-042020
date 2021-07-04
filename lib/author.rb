class Author
    attr_accessor :name
    attr_reader :posts

    def initialize(name)
        @name = name
        @posts = []
    end
    
    def add_post(post)
        post.author = self
        self.posts = post
    end

    def add_post_by_title(title)
        add_post(Post.new(title))
    end

    def self.post_count
        Post.all.length
    end
    
    def posts=(post)
        @posts << post
    end
end