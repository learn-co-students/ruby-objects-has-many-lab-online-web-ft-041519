class Author 
  
  attr_accessor :name
  
  def initialize(name)
    @name = name 
    @posts = []
  end 
  
  def posts 
    @posts 
  end 
  
  def add_post(posts)
    @posts << posts 
    posts.author = self 
  end 
  
  def add_post_by_title(title)
    post_title = Post.new(title)
    @posts << post_title   
    post_title.author = self 
  end 
  
  def self.post_count
    Post.all.count 
  end 
end 