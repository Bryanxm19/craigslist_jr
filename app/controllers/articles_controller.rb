class ArticlesController < ApplicationController
  def new
    @category = Category.find(params[:category_id])
  end

  private
    def article_params
      params.require(:article).permit(:price, :email, :title, :description)
    end
end
