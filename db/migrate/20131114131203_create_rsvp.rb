class CreateRsvp < ActiveRecord::Migration
  def change
    create_table :rsvps do |t|
    	t.integer :event_id
    	t.integer :user_id
    	t.integer :main_job
    	t.integer :second_job
      t.timestamps
    end
  end
end
