# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# Seed default categories
categories = [
  { name: "Technology", description: "Technology and software development articles" },
  { name: "Business", description: "Business and entrepreneurship insights" },
  { name: "Design", description: "Design patterns and UI/UX best practices" },
  { name: "DevOps", description: "DevOps and infrastructure management" },
  { name: "Security", description: "Application security and best practices" }
]

categories.each do |cat_attrs|
  Category.find_or_create_by(name: cat_attrs[:name]) do |category|
    category.description = cat_attrs[:description]
  end
end

puts "✓ Created #{categories.count} categories"

# Seed sample articles
Article.find_or_create_by(title: "Getting Started with Rails") do |article|
  article.content = "A comprehensive guide to setting up your first Rails application..."
  article.category = Category.find_by(name: "Technology")
  article.status = :published
  article.published_at = 3.days.ago
end

Article.find_or_create_by(title: "Best Practices for API Design") do |article|
  article.content = "Learn the principles of designing clean, RESTful APIs..."
  article.category = Category.find_by(name: "Technology")
  article.status = :published
  article.published_at = 2.days.ago
end

Article.find_or_create_by(title: "Security Checklist for Production") do |article|
  article.content = "Essential security measures before deploying to production..."
  article.category = Category.find_by(name: "Security")
  article.status = :published
  article.published_at = 1.day.ago
end

puts "✓ Created 3 sample articles"
puts "Seeding complete!"
