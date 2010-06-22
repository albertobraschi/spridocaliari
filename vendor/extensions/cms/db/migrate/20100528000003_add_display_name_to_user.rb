class AddDisplayNameToUser < ActiveRecord::Migration
  def self.up
      add_column :users, :display_name, :string, :limit => 200
  end

  def self.down
    remove_column :users, :display_name
  end
end