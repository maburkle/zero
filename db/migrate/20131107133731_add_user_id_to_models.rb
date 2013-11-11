class AddUserIdToModels < ActiveRecord::Migration
  def change
  	add_column :subjects, :user_id, :string
  	add_column :forums, :user_id, :string
  	add_column :topics, :user_id, :string
  	add_column :discusses, :user_id, :string
  	add_column :posts, :user_id, :string
  end
end
