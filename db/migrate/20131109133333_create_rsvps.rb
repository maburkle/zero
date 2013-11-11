class CreateRsvps < ActiveRecord::Migration
  def change
    create_table :rsvps do |t|

    	t.string :event_id
    	t.string :user_id
    	t.string :main_job
    	t.string :second_job
      t.timestamps
    end
  end
end
