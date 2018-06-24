class CreateDislikes < ActiveRecord::Migration[5.2]
  def change
    create_table :dislikes do |t|
      t.integer :count
      t.references :article, foreign_key: true

      t.timestamps
    end
  end
end
