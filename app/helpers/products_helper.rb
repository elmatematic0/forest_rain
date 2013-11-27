module ProductsHelper
  def product_params
    params.require(:product).permit(:name, :description, :price_in_cents, :tag_list)
  end

end
