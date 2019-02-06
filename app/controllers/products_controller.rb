class ProductsController < ApplicationController

  def create
    product = Product.new(product_params)
    product.category = Category.find(params[:category_id])
    product.save
    redirect_to category_path({id: params[:category_id]})
  end

  def product_params
    params.require(:product).permit(:name, :price, :category)
  end
end
