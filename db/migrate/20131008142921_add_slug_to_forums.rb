class AddSlugToForums < ActiveRecord::Migration
  def change
    add_index :forums, :slug
  end
end
