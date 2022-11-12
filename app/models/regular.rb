class Regular < ApplicationRecord
  has_many :spies, dependent: :destroy
  has_many :pubs, through: :spies, dependent: :destroy
  has_one_attached :photo
  validates :name, presence: true
  # before_save :add_default

  # def add_default
  #   self.favorite_drink = "none" if favorite_drink.nil?
  # end
end

# condition if image is url or uploaded
