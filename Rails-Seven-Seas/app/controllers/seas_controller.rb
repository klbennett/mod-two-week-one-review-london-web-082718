class SeasController < ApplicationController
  #define your controller actions here

# When we write an index action, the usual practice is to place it as the first method in the controller.
  def index
    @seas = Sea.all
  end

  def show
    @sea = Sea.find(params[:id])
  end

# View the HTML in browser inspect HTML element, within body, form class. Pass @sea to new page so new instance can be created from new page.
# New method to insta
  def new
    @sea = Sea.new
  end

  def edit
    @sea = Sea.find(params[:id])
  end

  def update
    @sea = Sea.find(params[:id])
    if @sea.update(sea_params)
      redirect_to @sea
    else
      render 'edit'
    end
  end


# Use private method sea_params passed as an argument
  def create
    @sea = Sea.create(sea_params)
    redirect_to @sea
  end

  def destroy
    @sea = Sea.find(params[:id])
    @sea.destroy
    redirect_to seas_path
  end


  private
  # In controller actions, use this private method to access sea params from forms.
  # Example: @sea.update(sea_params)
  # check the return value of sea_params to see what you're working with!
  def sea_params
    params.require(:sea).permit(:name, :temperature, :bio, :mood, :image_url, :favorite_color, :scariest_creature, :has_mermaids)
  end




end
