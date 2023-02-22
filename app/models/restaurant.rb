class Restaurant < ApplicationRecord
  has_many :reviews

  validates :name, :address, :category, presence: true
  validates :category, inclusion: { in: %w[chinese italian japanese french belgian] }

  def destroy
    self.reviews.destroy_all
    super
  end
end
