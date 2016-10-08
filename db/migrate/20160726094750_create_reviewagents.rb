class CreateReviewagents < ActiveRecord::Migration
  def change
    create_table :reviewagents do |t|
      t.text :comment
      t.integer :star
      t.references :agent, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
