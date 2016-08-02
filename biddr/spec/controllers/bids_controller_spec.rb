require 'rails_helper'

RSpec.describe BidsController, type: :controller do
  let(:auction) {FactoryGirl.create(:auction)}

  describe "#create" do
    context "with valid attributes" do
      def valid_request
        post :create, auction_id: auction.id, bid: {amount: 1000}
      end
      it "saves a record to the database" do
        count_before = Bid.count
        valid_request
        count_after = Bid.count
        expect(count_after).to eq(count_before + 1)
      end

      it "redirects to the show page of the Auction" do
        valid_request
        expect(response).to redirect_to(auction_path(Auction.last))
      end
    end
  end

end
