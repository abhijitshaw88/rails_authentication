class CategoryController < ApplicationController
  def new
    @category=Category.new
  end
  def create
    @category=Category.new(params.require(:category).permit(:name))
    # byebug
    @category.save
    redirect_to root_path
  end
end
