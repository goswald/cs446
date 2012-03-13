class Article < ActiveRecord::Base
    validates :title, :author, :body, presence: true
    belongs_to :author
    
end
class Article
    self.per_page = 10
end
