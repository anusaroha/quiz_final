class AddAuctionColumnToBidsTable < ActiveRecord::Migration[5.0]
  def change
    add_column :bids, :auction_id, :integer
  end
end
