class ListsController < ApplicationController
  def index
    @lists = List.all
  end
end

def show
end

def update
  @list.update(list_params)
  redirect_to list_path(@list)
end

private

def set_list
  @list = List.find(params[:id])
end

def list_params
  params.require(:list).permit(:name, :photo)
end
