class ProductController < ApplicationController
  include SmartListing::Helper::ControllerExtensions
  helper  SmartListing::Helper



  def index
      scope=Product.all
     @products=smart_listing_create :products, scope, partial: "product/list"
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

    # byebug
    @products.save
    redirect_to root_path
  end



  def update
    @products.update_attributes(params.require(:products).permit(:name))
  end


  def smart_listing_collection
    @products ||= Product.all
  end
  helper_method :smart_listing_collection





end
