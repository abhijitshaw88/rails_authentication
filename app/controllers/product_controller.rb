class ProductController < ApplicationController
  def index
  end
  def new
    @products=Product.new
    @options =([["Indian",27],['Thai',28],['Mexican',29]])
    @products.build_extra
  end
  def create
    @products=Product.new(params.require(:product).permit(:name, :category_id, :price, :ingridents,
                                                            extra_attributes: [:name]
                                                          ))

    byebug
    @products.save
    redirect_to root_path
  end
end
