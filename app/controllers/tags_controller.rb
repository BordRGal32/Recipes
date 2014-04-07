class TagsController < ApplicationController
  def index
    @tags = Tag.all
    render('index.html.erb')
  end
  def show
    @tag = Tag.find(params[:id])
    render('tags/show.html.erb')
  end

  def new
    @tag = Tag.new
    render('new.html.erb')
  end

  def create
    @tag = Tag.new(params[:tags])
    if @tag.save
      flash[:notice] = "#{@tag.name} was Saved to your tag list."
      redirect_to("/tags")
    else
      render('new.html.erb')
    end
  end

  def edit
    @tag = Tag.find(params[:id])
    render('edit.html.erb')
  end

  def update
    @tag = Tag.find(params[:id])
    if @tag.update(params[:tag])
      redirect_to("/tags")
    else
      render('edit.html.erb')
    end
  end

  def destroy
    @tag = Tag.find(params[:id])
    @tag.destroy
    render('tags/destroy.html.erb')
  end
end
