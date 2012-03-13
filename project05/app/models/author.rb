class Author < ActiveRecord::Base
    validates_format_of :author, :with => %r{^((?!pat).*$)}i, message: "name isn't accepted"
    has_many :articles

end
