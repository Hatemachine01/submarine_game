class CreateScores < ActiveRecord::Migration[5.0]
  def change
    create_table :scores do |t|
      t.integer :destroyed_sub
      t.string :result
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
