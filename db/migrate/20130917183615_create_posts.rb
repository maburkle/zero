class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.integer :discuss_id
      t.string :title
      t.string :description

      t.timestamps
    end
  end
end
