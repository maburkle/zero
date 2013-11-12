class CreateEventTypeTable < ActiveRecord::Migration
  def change
    create_table :event_type do |t|
    	t.string :type
    end
  end
end
