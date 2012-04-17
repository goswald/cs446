class User < ActiveRecord::Base
  attr_accessible :username, :email, :password, :firstname, :lastname
  acts_as_authentic
end
