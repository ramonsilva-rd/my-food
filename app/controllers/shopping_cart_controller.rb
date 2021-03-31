class ShoppingCartController < ApplicationController

  def show
    "Hello from Shopping Cart"
  end

  def update
    head :ok
  end

  def delete
    head :ok
  end

  def clean
    head :ok
  end

  private

  def permitted_params
    params.require(:meal).permit(:id)
  end

end
