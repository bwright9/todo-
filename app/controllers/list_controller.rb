class ListController < ApplicationController
  def index
  	@lists = List.all 
  end

  def edit
  	@list = List.find(params[:id])
  end

  def new
  	@list = List.new 
  end

  def show
  	@list = List.find(params[:id])
  end

  def create 
  	@list = list.new(list_params)
  	if @list.save
  	  redirect_to list_path
  	else
  	  render :new
  	end
  end

	def destroy
	  List.find(params[:id]).destroy
	  redirect_to list_path
	end

  def update
   	@list = List.find(params[:id])
   	if @list.update(list_params)
   	  redirect_to list_path(@list)
   	else
   	  render :edit
   	end	
   end

	private
	
  def list_params
    params.require(:list).permit(:reminder)
  end
end 