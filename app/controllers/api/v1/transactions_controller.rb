class Api::V1::TransactionsController < ApplicationController

    # before_action :set_item

    def index
        @transactions = Transaction.all
        render json: @transactions
    end
    
    def show
        @transaction = Transaction.find(params[:id])
        render json: @transaction
    end
   
    def create
        @transaction = @item.transactions.new(transaction_params)
        @transaction.date = DateTime.now
        if @item.update_balance(@transaction) != 'Balance too low'
            @transaction.save
            render json: @item
        else
            render json: {error: 'Balance too low'}
        end
    end

    def destroy
        @transaction = Transaction.find(params["id"])
        @item = Item.find(@transaction.item_id)
        if @item.update_balance_on_delete(@transaction)
          @transaction.destroy
          render json: @item
        else
          render json: {error: 'Balance too low'}
        end
      end


    private

    # def set_item
    #     @item = Item.find(params[:item_id])
    # end

    def transaction_params
        params.require(:transaction).permit(:item_id, :amount, :kind, :note, :date)
    end

end
