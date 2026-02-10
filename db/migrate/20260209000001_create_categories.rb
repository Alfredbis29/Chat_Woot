class CreateCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :categories do |t|
      t.string :name, null: false
      t.text :description
      t.string :slug
      t.integer :articles_count, default: 0

      t.timestamps
    end

    add_index :categories, :slug, unique: true
    add_index :categories, :name, unique: true
  end
end
