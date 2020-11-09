class Api::V1::ItemsController < ApplicationController

    def index
        @items = Item.all 
        render json: @items
    end

    def create
        @item = Item.new(item_params)
        if @item.save
            render json: @item
        else
            render json: {error: "Error Creating Account"}
        end
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
