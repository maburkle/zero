class Removeemailindex < ActiveRecord::Migration
  def change
  	remove_index(:users, :name => 'index_users_on_email')
    create_table :rsvps do |t|

    	t.integer :event_id
    	t.integer :user_id
    	t.string :main_job
    	t.string :second_job
      t.timestamps
    end
  end
end
