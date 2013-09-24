class AddUsernameToForum < ActiveRecord::Migration
  def change
    add_column :forums, :username, :string
  end
end
