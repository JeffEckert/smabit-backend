class Api::V1::ItemsController < ApplicationController

    def index
        @items = Item.all 
        render json: @items
    end

    def create
        # binding.pry
        @item = Item.new(item_params)
        if @item.save
            render json: @item
        else
            render json: {error: "Error Creating Account"}
        end
    end

    def show
        @item = Item.find(params[:id])
        render json: @item
    end

    def destroy
        @item = Item.find(params[:id])
        @item.destroy
    end

    def update
        @item = Item.find(params[:id])
        @item.update(name: params["item"]["name"], balance: params["item"]["balance"]) 
        @item.save
        render json: @item
    end

    private

    def item_params
        params.require(:item).permit(:name, :balance)
    end
end
