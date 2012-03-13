class AddColumnAuthorIdToArticles < ActiveRecord::Migration
  def change
    remove_column :articles, :author_name
    add_column :articles, :author_id, :integer
  end
end
