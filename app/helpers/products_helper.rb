module ProductsHelper
  def product_params
    params.require(:product).permit(:name, :description, :price_in_cents)
  end

end
