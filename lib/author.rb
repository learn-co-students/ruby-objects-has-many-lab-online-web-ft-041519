class Author 
  
  attr_accessor :name
  
  def initialize(name)
    @name = name
    @posts = []
  end
  
  def posts 
    @posts 
  end 
  
  def add_post(one_post)
    @posts << one_post
    one_post.author = self 
  end 
  
  def add_post_by_title(post_title)
    one_post = Post.new(post_title)
    @posts << one_post
    one_post.author = self 
  end 
  
  def self.post_count
    Post.all.count 
  end
end 