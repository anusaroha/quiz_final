class AuctionsController < ApplicationController
before_action :find_article, only: [:show]
  def new
    @auction = Auction.new
  end

  def create
    @auction = Auction.new auction_params
    if @auction.save
      flash[:notice] = "Auction Created!"
      redirect_to auction_path(@auction)
    else
      flash[:alert] = "Auction not created!"
      render :new
    end
  end

  def show
    @bid = Bid.new
  end

  private
    def auction_params
      params.require(:auction).permit(:title, :details, :ends_on, :reserve_price)
    end

    def find_article
      @auction = Auction.find params[:id]
    end
end
