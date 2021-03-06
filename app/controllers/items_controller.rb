class ItemsController < ApplicationController
  before_action :find, only: [:show, :edit, :update, :destroy]
  def index
    @items = Item.all
  end

  def show
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    @item.update(item_params)
    redirect_to items_path
  end

  def destroy
    @item.destroy
    redirect_to items_path
  end

  private

  def item_params
    params.require(:item).permit(:name, :category)
  end

  def find
    @item = Item.find(params[:id])
  end
end
