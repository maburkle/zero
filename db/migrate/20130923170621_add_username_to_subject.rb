class AddUsernameToSubject < ActiveRecord::Migration
  def change
    add_column :subjects, :username, :string
  end
end
