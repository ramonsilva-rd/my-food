class HomeController < ApplicationController

  NUMBER_OF_ITENS_ON_HOME_SCREEN = 12
  ITEMS_PER_ROW = 4

  def index
    show_meals_use_case = Showcase::ShowMealsUseCase.new
    @items = show_meals_use_case.execute(NUMBER_OF_ITENS_ON_HOME_SCREEN)
  end

end
