class CreateArticles < ActiveRecord::Migration[7.0]
  def change
    create_table :articles do |t|
      t.string :title, null: false
      t.text :content
      t.references :category, foreign_key: true
      t.integer :status, default: 0
      t.datetime :published_at
      t.string :slug
      t.integer :views_count, default: 0

      t.timestamps
    end

    add_index :articles, :slug, unique: true
    add_index :articles, :status
    add_index :articles, :published_at
  end
end
