class AddSlugs < ActiveRecord::Migration
  def change
  	add_column :subjects, :slug, :string
  	add_index :subjects, :slug
  	add_column :topics, :slug, :string
  	add_index :topics, :slug
  	add_column :discusses, :slug, :string
  	add_index :discusses, :slug
  	add_column :posts, :slug, :string
  	add_index :posts, :slug
  end
end
