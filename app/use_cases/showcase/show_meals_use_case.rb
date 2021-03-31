module Showcase
  class ShowMealsUseCase

    def execute(number_of_itens)
      list_meals(number_of_itens)
    end

    private

    def list_meals(number_of_itens)
      Meal
        .all
        .order("created_at", :desc)
        .take(number_of_itens)
    end
  end
end
