require 'pry'
class Post 

  attr_accessor :name, :title, :author
  
  @@all = []

  def initialize(name)
    @@all << self 
    @title = name 
  end 

  def self.all
    @@all
  end 
  
  def author_name
    if @author
      @author.name
    end 
  end 

end
