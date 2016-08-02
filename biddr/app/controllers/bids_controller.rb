class BidsController < ApplicationController
  def create
    @bid   = Bid.new bid_params
    @auction = Auction.find params[:auction_id]
    @bid.auction = @auction
    if @bid.save
      redirect_to auction_path(@auction), notice: "Comment created!"
    else
      render "/auction/show"
    end
  end

    private

    def bid_params
      params.require(:bid).permit(:amount)
    end
end
