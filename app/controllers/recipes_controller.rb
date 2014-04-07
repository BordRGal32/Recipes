class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
    render('index.html.erb')
  end
  def show
    @recipe = Recipe.find(params[:id])
    render('show.html.erb')
  end

  def new
    @recipe = Recipe.new
    render('new.html.erb')
  end

  def create
     @recipe = Recipe.new(params[:recipe])
    if params[:tag] != nil
      @tag = Tag.find(params[:tags])
      @recipe.tags << @tag
    end
    if @recipe.save
      flash[:notice] = "#{@recipe.name} was Saved to your Recipe Book"
      redirect_to("/recipes")
    else
      render('new.html.erb')
    end
  end

  def edit
    @recipe = Recipe.find(params[:id])
    render('edit.html.erb')
  end

  def update
    @recipe = Recipe.find(params[:id])
    if params[:tags] != nil
      @tag = Tag.find(params[:tags])
      @recipe.tags << @tag
    end

    if @recipe.update(params[:recipe])
      redirect_to("/recipes")
    else
      render('edit.html.erb')
    end
  end

  def destroy
    @recipe = Recipe.find(params[:id])
    @recipe.destroy
    render('recipes/destroy.html.erb')
  end

  def remove_tag
    @recipe = Recipe.find(params[:id])
    @delete_tag = Tag.find(params[:tag_id])
    @recipe.tags.delete(@delete_tag)
    render("show.html.erb")
  end
end
