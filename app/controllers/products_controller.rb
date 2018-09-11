class ProductsController < ApplicationController
  def create
    @product = Product.new(product_params)
    redirect_to category_path if @product.save
  end

  private

  def product_params
    params.require(:product).permit(:name, :price)
  end
end
