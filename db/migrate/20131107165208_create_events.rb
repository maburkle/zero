class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
    	t.string :title
    	t.string :description
    	t.string :start_time
    	t.string :end_time
    	t.string :event_date
    	t.string :user_id
    	
      t.timestamps
    end
  end
end
