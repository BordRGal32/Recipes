class RatingsController < ApplicationController
  def index
    @recipe = Recipe.find(params[:id])
    @rating = @recipe.ratings
    render('index.html.erb')
  end

  def show
    @ratings = Rating.find(params[:id])
    redirect_to("/recipes/#{@ratings.recipe_id}/ratings")
  end

  def new
    @recipe = Recipe.find(params[:id])
    @rating = Rating.new
    render('/ratings/new.html.erb')
  end

  def create
    @recipe = Recipe.find(params[:id])
    @rating = Rating.new(params[:rating])
    if @rating.save
      flash[:notice] = "Your Review Was Saved"
      redirect_to("/")
    else
      render('new.html.erb')
    end
  end

  # def edit
  #   @review = Review.find(params[:id])
  #   render('edit.html.erb')
  # end

  # def update
  #   @review = Review.find(params[:id])
  #   if @review.update(params[:review])
  #     redirect_to("/reviews")
  #   else
  #     render('edit.html.erb')
  #   end
  # end

  # def destroy
  #   @review = Review.find(params[:id])
  #   @review.destroy
  #   render('reviews/destroy.html.erb')
  # end
end
