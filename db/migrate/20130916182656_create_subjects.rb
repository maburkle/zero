class CreateSubjects < ActiveRecord::Migration
  def change
    create_table :subjects do |t|
      t.integer :forum_id
      t.string :title
      t.string :description

      t.timestamps
    end
  end
end
