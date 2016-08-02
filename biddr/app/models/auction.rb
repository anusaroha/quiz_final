class Auction < ApplicationRecord
  validates :title, presence: true
  validates :details, presence: true
  validates :reserve_price, presence: true

  has_many :bids, dependent: :destroy

  def new_first_bids
    bids.order(created_at: :desc)
  end
end
