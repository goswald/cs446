class Member < ActiveRecord::Base
  attr_accessible :username, :email, :firstname, :lastname, :password
  acts_as_authentic
end
