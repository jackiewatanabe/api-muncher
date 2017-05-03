
class RecipesController < ApplicationController

  def index
    @search_term = params[:search_term]
    @recipes = EdamamApiWrapper.search(@search_term)
    
  end

  def search


  end

end
