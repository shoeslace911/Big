class Regular < ApplicationRecord
  validates :name, presence: true
  # before_save :add_default

  # def add_default
  #   self.favorite_drink = "none" if favorite_drink.nil?
  # end
end
