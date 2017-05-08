class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  def new
    @category = Category.new
  end

  def edit
    @category = find_category
  end

  def show
    @category = find_category
  end

  def update
    @category = find_category
    if @category.update_attributes(category_params)
      redirect_to categories_path
    else
      render 'edit'
    end
  end

  def destroy
    @category = find_category
    @category.destroy

    redirect_to categories_path
  end

  private
    def category_params
      params.require(:category).permit(:description)
    end

    def find_category
      Category.find(params[:id])
    end
end
