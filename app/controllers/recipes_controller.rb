
class RecipesController < ApplicationController

  def index
    @search_term = params[:search_term]
    recipes = EdamamApiWrapper.search(@search_term)
    @recipes = recipes.paginate(:page => params[:page], :per_page => 10)

  end

  def show
    #@recipe_uri = params[:uri]
    @recipe = EdamamApiWrapper.getRecipe(params[:uri])

  end

end
