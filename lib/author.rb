class Author
  attr_accessor :name
  
  @@counter = 0     #stores the count. class method can be used by all methods.
  @@posts = []      #stores the posts by name and opt title.
  
  def initialize(name)
    @name = name
  end

def posts 
  @@posts
end

def add_post(a_post)
 @@posts << a_post
 a_post.author = self       #tells the post it belongs to the author
 @@counter += 1             #increase the song counter by 1 when added
end

def add_post_by_title(title)
  new_post = Post.new(title)
  @@posts << new_post
  new_post.author = self
  @@counter += 1
  end

def self.post_count
  @@counter
  
  end
end