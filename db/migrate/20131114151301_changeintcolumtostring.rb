class Changeintcolumtostring < ActiveRecord::Migration
  def change
    change_column :rsvps, :main_job, :string
    change_column :rsvps, :second_job, :string
  end
end
