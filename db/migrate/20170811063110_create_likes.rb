class CreateLikes < ActiveRecord::Migration[5.1]
  def change
    create_table :likes do |t|
      t.string :comment_id
      t.string :integer
      t.references :comment, foreign_key: true

      t.timestamps
    end
  end
end
