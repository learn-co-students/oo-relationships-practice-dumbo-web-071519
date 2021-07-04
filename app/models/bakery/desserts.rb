class Dessert
    @@desserts = []
    attr_accessor :name, :bakery

    def initialize(name, bakery)
        @name = name
        @bakery = bakery

        @@desserts << self
    end

    def self.all
        @@desserts
    end

    def ingredients
        Ingredient.all.select{|ingredient| ingredient.dessert == self}
    end

    def calories
        self.ingredients.reduce(0) { |sum, ingredient| sum += ingredient.calorie_count}
    end
end