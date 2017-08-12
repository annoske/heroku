class CreateTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :tasks do |t|
      t.string :title
      t.integer :good
      t.references :comment, foreign_key: true

      t.timestamps
    end
  end
end
