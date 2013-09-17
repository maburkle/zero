class CreateDiscusses < ActiveRecord::Migration
  def change
    create_table :discusses do |t|
      t.integer :topic_id
      t.string :title
      t.string :description

      t.timestamps
    end
  end
end
