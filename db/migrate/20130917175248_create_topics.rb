class CreateTopics < ActiveRecord::Migration
  def change
    create_table :topics do |t|
      t.integer :subject_id
      t.string :title
      t.string :description

      t.timestamps
    end
  end
end
