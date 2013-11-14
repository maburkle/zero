class CreateRsvp < ActiveRecord::Migration
  def change
  	drop_table :rsvps
  end
end
