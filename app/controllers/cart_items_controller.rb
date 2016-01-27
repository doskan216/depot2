class CartItemsController < ApplicationController
  def create

   @cart.cart_items.create(cart_item_params)
   redirect_to root_url, notice: 'カートに商品を追加'
  end

  private

  def cart_item_params
    params.permit(:product_id)
  end
end
