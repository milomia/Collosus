# We have the following ActiveRecord models.

class Product < ActiveRecord::Base
  belongs_to :category

  attr_accessor :name # String
  attr_accessor :price # Decimal
  attr_accessor :quantity # Integer
end

class Category < ActiveRecord::Base
  has_many :products

  attr_accessor :name # String
end

class User < ActiveRecord::Base
  attr_accessor :username # String
  attr_accessor :balance # Decimal
end

# The following class is the Shopping Cart (please note it's a PORO class).
# Implement it and its methods. Use data structures of your choice.
# Restrictions:
# - A user cannot add more items to their shopping cart than are currently available
# - The above restriction only applies to each user, not across multiple users (e.g. if there are 10 items available, user A can add up to 10 items, while user B can also add up to 10 items at the same time)
# - An additional check is required when a user is checking out to ensure there is still sufficient inventory remaining
# - If during checkout a certain product doesn't have sufficient inventory remaining, the checkout needs to be canceled and a RuntimeError risen.

class Cart
  attr_reader :user
  # Your code here

  def initialize(user)
    @user = user
    # Your code here
  end

  # Add a certain quantity of a certain product to the cart
  def add(product, quantity)
    # Your code here
  end

  # Remove a certain quantity of a certain product to the cart
  def remove(product, quantity)
    # Your code here
  end

  # Proceed with payment updating both user's balance and products quantities in the DB. It also resets the cart.
  def checkout
    # Your code here
  end

  # Remove all products from the cart
  def clear
    # Your code here
  end
end


# =============== Notes =============== #
