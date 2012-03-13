class Author < ActiveRecord::Base
    validates_format_of :name, :with => %r{^((?!pat).*$)}i, message: "name isn't accepted"
    has_many :articles
#    attr_accessible :picture
#    has_attached_file :picture #:styles => { :medium => "300x300>", :thumb => "100x100>" }, :url => "/assets/authors/:id/:style/:basename.:extension", :path => ":rails_root/public/assets/products/:id/:style/:basename.:extension"
end
