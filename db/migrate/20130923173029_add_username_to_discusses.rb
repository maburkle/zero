class AddUsernameToDiscusses < ActiveRecord::Migration
  def change
    add_column :discusses, :username, :string
  end
end
