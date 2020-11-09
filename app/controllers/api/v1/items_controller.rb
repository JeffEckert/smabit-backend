class Api::V1::ItemsController < ApplicationController

    def index
        @items = Item.all 
        render json: @accounts
    end

    def create

    end

    def show

    end

    def destroy

    end

    private

    def item_params
        params.require(:item).permit(:name, :balance)
    end
end
