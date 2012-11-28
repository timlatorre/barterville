class ItemsController < ApplicationController
  before_filter :ensure_logged_in

  def index # all your items
    @items = Item.all
  end

  def show # single item
    @item = Item.find(params[:id])
  end

  def create
    @auth.items << Item.create(params[:item])
    redirect_to items_path
  end

  def new # create new item
    @item = Item.new 
  end

  def edit #edit item
    @item = Item.find(params[:id])
  end

  def update
    @item = Item.find(params[:id])
    if @item.update_attributes(params[:item])
      flash[:notice] = 'Your item was successfully updated.'
      redirect_to :action => 'show', :id => @item
    else
      render :action => 'edit'
    end
  end

  def destroy
    @item = Item.find(params[:id])
    @item.destroy
    redirect_to items_path
  end

  private
  def ensure_logged_in
    redirect_to root_path if @auth.nil?
  end

end