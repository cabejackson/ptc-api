class CreateSteps < ActiveRecord::Migration[7.0]
  def change
    create_table :steps do |t|
      t.integer :score
      t.text :description
      t.belongs_to :card, null: false, foreign_key: true

      t.timestamps
    end
  end
end
