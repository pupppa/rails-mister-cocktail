class CocktailsController < ApplicationController

    before_action :set_cocktail, only: [:show, :edit, :update, :destroy]


  def index
    @cocktails = Cocktail.all
  end

  def show
    @cocktail = Cocktail.find(params[:id])
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)

    if @cocktail.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end


   #    creates a new Cocktail (FAILED - 1)
   #    assigns a newly created cocktail as @cocktail (FAILED - 2)
   #    redirects to the created cocktail (FAILED - 3)

   # cocktails_new_path
   #                    cocktails_index_path
   #                    cocktails_update_path
   #                    cocktails_edit_path
   #                    cocktail_params


# CocktailsController
#   routing
#     routes to #index (FAILED - 8)
#     routes to #new
#     routes to #show (FAILED - 9)
#     routes to #create (FAILED - 10)

  end

  def edit
    @cocktail = Cocktail.find(params[:id])
  end

  def update
    @cocktail = Restaurant.find(params[:id])
    @cocktail.update(cocktail_params)
    redirect_to cocktail_path(@cocktail)
  end

  def destroy
    @cocktail = Cocktail.find(params[:id])
    @cocktail.destroy
    redirect_to cocktails_path
  end



  private

  def cocktail_params
      params.require(:cocktail).permit(:name)
  end

  def set_cocktail
    @cocktail = Cocktail.find(params[:id])
  end



end
