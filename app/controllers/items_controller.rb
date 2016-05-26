class ItemsController < ApplicationController
def index
  	@items = Items.all 
  end

  def edit
  	@item = Items.find(params[:id])
  end

  def new
  	@item = Items.new 
  end

  def show
  	@item = Item.find(params[:id])
  end

  def create 
  	@item = Item.new(item_params)
  	if @item.save
  	  redirect_to item_path
  	else
  	  render :new
  	end
  end

	def destroy
	  Item.find(params[:id]).destroy
	  redirect_to item_path
	end

  def update
   	@item = Item.find(params[:id])
   	if @item.update(ite,_params)
   	  redirect_to item_path(@item)
   	else
   	  render :edit
   	end	
   end

	private
	
  def item_params
    params.require(:item).permit(:list)
  end
end 
