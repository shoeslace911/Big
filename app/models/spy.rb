class Spy < ApplicationRecord
  belongs_to :pub
  belongs_to :regular

  validates :pub, presence: true, uniqueness: { scope: :regular }
  validates :note, presence: true
end
