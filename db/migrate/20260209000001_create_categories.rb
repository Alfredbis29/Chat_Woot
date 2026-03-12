# db/migrate/YYYYMMDDHHMMSS_create_categories.rb

class CreateCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :categories do |t|
      # Core fields
      t.string  :name,        null: false, limit: 100
      t.string  :slug,        null: false, limit: 120
      t.text    :description, null: true

      # Cached counter for associated articles (used with counter_cache)
      t.integer :articles_count, null: false, default: 0

      # Soft delete support
      t.datetime :archived_at, null: true

      t.timestamps null: false
    end

    # Enforce uniqueness at the database level
    add_index :categories, :slug, unique: true
    add_index :categories, :name, unique: true

    # Optimize filtering of active (non-archived) categories
    add_index :categories, :archived_at
  end
end