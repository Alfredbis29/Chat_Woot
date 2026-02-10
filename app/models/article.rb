class Article < ApplicationRecord
  # Enums
  enum :status, { draft: 0, published: 1, archived: 2 }

  # Associations
  belongs_to :category, optional: true, counter_cache: true
  
  # Validations
  validates :title, presence: true, uniqueness: true, length: { minimum: 5, maximum: 255 }
  validates :content, length: { minimum: 10 }, allow_blank: true
  validates :slug, uniqueness: true, allow_blank: true
  validates :status, presence: true
  validate :published_at_cannot_be_in_the_past, if: -> { status_changed? && published? }
  validate :title_not_profane

  # Callbacks
  before_save :generate_slug
  before_save :set_published_at, if: -> { status_changed? && published? }

  # Scopes
  scope :published, -> { where(status: :published).where('published_at <= ?', Time.current) }
  scope :recent, -> { order(published_at: :desc) }
  scope :popular, -> { order(views_count: :desc) }
  scope :by_category, ->(category_id) { where(category_id: category_id) if category_id.present? }

  # Public Methods
  def to_param
    slug
  end

  def published?
    status == 'published'
  end

  def increment_views
    increment(:views_count)
    save if views_count_changed?
  end

  private

  def generate_slug
    return if slug.present?
    self.slug = title.parameterize
  end

  def set_published_at
    self.published_at = Time.current if published_at.blank?
  end

  def published_at_cannot_be_in_the_past
    return if published_at.blank?
    errors.add(:published_at, "cannot be in the past") if published_at < Time.current
  end

  def title_not_profane
    # Placeholder for content moderation validation
    errors.add(:title, "contains inappropriate content") if title&.downcase&.include?("test")
  end
end
