# Given the following ActiveRecord models...

class Post < ActiveRecord::Base
  belongs_to :author
  has_many :comments
end

class Comment < ActiveRecord::Base
  belongs_to :post

  attr_accessor :body # Text
end

class Author < ActiveRecord::Base
  has_many :posts
  
  attr_accessor :username # String
  attr_accessor :age # Integer
end

# Implement the following controller action so that it
# 1. accepts two params :from_age and :to_age
# 2. takes from database all posts from authors aged between from_age and to_age (included)
# 3. add to the response comments from each post
# 4. returns a JSON response with the following structure:
#     {
#       posts : [
#         {
#           author : {
#             username : "...",
#             age : "..."
#           }
#           comments : [
#             { body : "...", created_at : "..." },
#             { body : "...", created_at : "..." },
#             ...
#           ]
#         },
#         ...
#       ]
#     }
#       

class CommentsController < ApplicationController
  def users_comments
    @from_age=params[:from_age]
    @to_age=params[:to_age]
    @posts = Author.where(age > @from_age and age < @to_age)
    @posts.to_json
  end
end


# =============== Notes =============== #
