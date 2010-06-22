class CreatePages < ActiveRecord::Migration
  def self.up
    create_table :pages do |t|      
      t.string :title, :null => false,  :limit => 128
      t.text :body
      t.text :body_raw
      t.integer :is_active, :default => 0
      t.string :permalink, :null => false,  :limit => 128
      t.datetime :published_at
      t.string :meta_keywords
      t.string :meta_description

      t.timestamps
    end
    add_index :pages, :published_at, :name => :pages_published_at_ix
    add_index :pages, :permalink, :name => :pages_permalink_ix
    add_index :pages, [:is_active,:published_at], :name => :pages_is_active_published_at_ix
  end

  def self.down
    drop_table :pages
  end
end