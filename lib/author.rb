require_relative 'post.rb'
require 'pry'

class Author
  attr_accessor :name, :posts

  def initialize(name)
    @name = name
    @posts = []
  end

  def add_post(post)
    post.author = self
    @posts << post
  end

  def add_post_by_title(post_name)
    post = Post.new(post_name)
    add_post(post)
  end

  def self.post_count
    Post.all.length
  end
end
