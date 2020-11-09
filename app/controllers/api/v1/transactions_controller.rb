class Api::V1::TransactionsController < ApplicationController

    before_action :set_item

    def index
        @transactions = Transaction.all
        render json: @transactions
    end
    
    def show
        @transaction = Transaction.find(params[:id])
        render json: @transaction
    end
   

    private

    def set_item
        @item = Item.find(params[:item_id])
    end

    def transaction_params
        params.require(:transaction).permit(:item_id, :amount, :kind, :note, :date)
    end

end
