class CreateLikes < ActiveRecord::Migration[5.2]
  def change
    create_table :likes do |t|
      t.integer :count
      t.references :article, foreign_key: true

      t.timestamps
    end
  end
end
