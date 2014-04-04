class RatingsController < ApplicationController
  # def index
  #   @reviews = Review.all
  #   render('index.html.erb')
  # end
  # def show
  #   @review = Review.find(params[:id])
  #   render('reviews/show.html.erb')
  # end

  def new
    @recipe = Recipe.find(params[:id])
    # params crash
    @rating = Rating.new
    render('/ratings/new.html.erb')
  end

  def create
    @rating = Rating.new(params[:review])
    if @rating.save
      flash[:notice] = "#{@rating.name} was Saved"
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
