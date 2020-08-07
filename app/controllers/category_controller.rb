class CategoryController < ApplicationController
  def new
    @category=Category.new
    @category.products.build.extra
  end
  def create
    @category=Category.new(params.require(:category).permit(:name,
                                                              { products_attributes: [:name, :price, :ingridents,
                                                                extra_attributes: [:name]]
                                                              })
                                                            )
    # byebug
    @category.save
    redirect_to root_path
  end
end
