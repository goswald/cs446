class AddColumnAuthorIdToArticles < ActiveRecord::Migration
  def change
    remove_column :articles, :author
  end
end
