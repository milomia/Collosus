# Given the following ActiveRecord models...

class Post < ActiveRecord::Base
  belongs_to :author
  has_many :comments
end

class Comment < ActiveRecord::Base
  belongs_to :post
  belongs_to :user

  attr_accessor :body # Text
end

class Author < ActiveRecord::Base
  has_many :posts
  
  attr_accessor :username # String
  attr_accessor :age # Integer
end

class User < ActiveRecord::Base
  has_many :comments
  
  attr_accessor :username # String
end

# Write a route so that the below action (PostsController#stats) can be called like this:
# /posts/:id/stats

Rails.application.routes.draw do
   get '/posts/:id/stats', to 'posts#stats'
end

# Implement the following controller action so that it
# 1. accepts an :id parameter
# 2. returns a JSON response with the following structure:
#    {
#      post : {
#        comments_count : A, # A = Number of comments for that post
#        longest_comment: B, # B = Amount of characters in the longest comment for the post
#        users_count: C,   # C = Number of different users commenting the post
#        users: [ "username1", "username2", "username3", ... ] # List of different users' usernames commenting the post
#      }
#    }

class PostsController < ApplicationController
  def stats
       @posts = Posts.find([params[:id])
  end
end


# =============== Notes =============== #
