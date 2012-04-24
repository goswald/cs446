class CreateGames < ActiveRecord::Migration
  def self.up
    create_table :games do |t|
      t.string :title
      t.string :rating
      t.integer :author_id
      t.timestamps
    end
  end

  def self.down
    drop_table :games
  end
end