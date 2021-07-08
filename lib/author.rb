require_relative "./post.rb"

class Author
    attr_accessor :name
    def initialize(name)
        @name = name
    end

    def posts
        Post.all.select {|pst| pst.author_name == self.name}
    end

    def add_post(post_obj)
        post_obj.author = self
    end

    def add_post_by_title(pst_title)
        Post.new(pst_title).author = self
    end

    def self.post_count
        Post.all.count
    end
end
