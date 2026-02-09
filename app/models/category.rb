class Category < ApplicationRecord
  # Associations
  has_many :articles, dependent: :destroy

  # Validations
  validates :name, presence: true, uniqueness: true, length: { minimum: 3, maximum: 100 }
  validates :slug, uniqueness: true, allow_blank: true
  validates :description, length: { maximum: 500 }, allow_blank: true

  # Callbacks
  before_save :generate_slug

  # Scopes
  scope :active, -> { where('articles_count > 0') }
  scope :ordered, -> { order(name: :asc) }

  # Public Methods
  def to_param
    slug
  end

  private

  def generate_slug
    return if slug.present?
    self.slug = name.parameterize
  end
end
