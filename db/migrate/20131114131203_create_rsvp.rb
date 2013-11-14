class CreateRsvp < ActiveRecord::Migration
  def change
    change_column :rsvps, :event_id, :integer
    change_column :rsvps, :user_id, :integer
  end
end
