class Author 
  
  attr_accessor :name  
  
  @@all = []
  
  def initialize(name)
    @name = name
    @posts = []
    @@all << self 
  end
  
  def posts 
    @posts 
  end
  
  def add_post(post)
    @posts << post 
    post.author = self 
  end
  
  def add_post_by_title(post)
    post = Post.new(post)
    @posts << post 
    post.author = self 
  end
  
  def self.post_count
    count = 0 
    @@all.each{|author| count += author.posts.length}
    count 
  end

end