class Api::V1::TransactionsController < ApplicationController

    before_action :set_item
   

    private

    def set_item
        @item = Item.find(params[:item_id])
    end

    def transaction_params
        params.require(:transaction).permit(:item_id, :amount, :kind, :note, :date)
    end

end
