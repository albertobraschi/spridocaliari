class AddShowOnHomepageToProducts < ActiveRecord::Migration
  def self.up
    add_column :products, :show_on_homepage, :boolean, :default=>false, :null=>false
  end

  def self.down
    remove_column :products, :show_on_homepage
  end
end