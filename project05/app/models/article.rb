class Article < ActiveRecord::Base
    validates :title, :author, :body, presence: true
    validates_format_of :author, :with => %r{^((?!pat).*$)}i, message: "name isn't accepted"
    
end
class Article
    self.per_page = 10
end
