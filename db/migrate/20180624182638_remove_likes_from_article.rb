class RemoveLikesFromArticle < ActiveRecord::Migration[5.2]
  def change
    change_table :articles do |t|
      t.remove :likes, :dislikes
    end
  end
end
