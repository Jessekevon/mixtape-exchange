class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :content
      t.string :post_img
      t.string :embed_url

      t.timestamps
    end
  end
end
