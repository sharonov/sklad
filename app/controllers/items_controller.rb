class ItemsController < ApplicationController
  def index
    if !params[:id]
      @items = Item.all
      @parent_id = 1
    else
      right = Item.find(params[:id]).rgt
      left = Item.find(params[:id]).lft
      @items = Item.where(:lft => left..right, :rgt => left..right)
      @parent_id = params[:id]
    end
  end

  def show
  end

  def new
    @item = Item.new(:parent_id => params[:parent_id], :branch => params[:branch], :user_id => 1)
    redirect_to :controller=>'items',:action=>'create',:id=>@item.id
  end

  def create

        @item = Item.new(:parent_id => params[:parent_id], :branch => params[:branch], :user_id => 1)

#        @item = Item.find(params[:id])

        if @item.save
          redirect_to :action => 'index', :id => @item.parent_id
        else
          flash[:notice]="Something gone wrong. Item to be saved:"+@item.parent_id.to_s
        end

  end

  def edit
  end

end
