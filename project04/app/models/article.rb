class Article < ActiveRecord::Base
    validates :title, :author, :body, presence: true
    validates_exclusion_of :author, :in => "pat", :message => "I'm sorry, but %{value} is not an accepted author name." 
end
