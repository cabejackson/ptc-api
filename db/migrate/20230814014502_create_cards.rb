class CreateCards < ActiveRecord::Migration[7.0]
  def change
    create_table :cards do |t|
      t.string :title
      t.text :target
      t.text :user_story
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
