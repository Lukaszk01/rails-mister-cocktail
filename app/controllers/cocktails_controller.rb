class CocktailsController < ApplicationController

  def new
    @cocktail = Cocktail.new
  end

  def index
    @cocktails = Cocktail.all
  end

  def show
    @cocktail = Cocktail.new
    @cocktail = Cocktail.find(params[:id])
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    if @cocktail.save
      redirect_to @cocktail, notice: 'Cocktail created!.'
    else
      render :new
    end
  end

  def edit

  end

  def update

  end

  def destroy
    # @Cocktail.destroy
    # redirect_to Cocktails_url, notice: 'Cocktail destroyed!.'
  end

private

  def cocktail_params
    params.require(:cocktail).permit(:name)
  end
end
