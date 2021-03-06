class CreateMembers < ActiveRecord::Migration
  def self.up
    create_table :members do |t|
      t.string :username
      t.string :email
      t.string :firstname
      t.string :lastname
      t.string :crypted_password
      t.string :password_salt
      t.string :persistence_token
      t.timestamps
    end
  end

  def self.down
    drop_table :members
  end
end
