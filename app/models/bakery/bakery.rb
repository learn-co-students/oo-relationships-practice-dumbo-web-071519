class Bakery
    
    @@all = []
    
    attr_reader :name

    def initialize(name)
        @name = name
        @@all << self
    end

    def desserts
        Dessert.all.select{|dessert| dessert.bakery == self}
    end

    def ingredients
        self.desserts.flat_map(&:ingredients)
    end

    def average_calories
        self.ingredients.reduce(0){|sum, ingredient| sum += ingredient.calorie_count} / self.desserts.count
    end

    def shopping_list
        ingredients.map(&:name).uniq
    end

    def self.all
        @@all
    end
end