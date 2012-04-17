class Game < ActiveRecord::Base
  attr_accessible :title, :rating, :author_id
end
