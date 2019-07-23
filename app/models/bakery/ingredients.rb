class Ingredient
    @@all = []

    attr_reader :name, :dessert, :calorie_count

    def initialize(name, dessert, calorie_count)
        @name = name
        @dessert = dessert
        @calorie_count = calorie_count
        @@all << self    
    end

    def self.all
        @@all
    end

    def self.find_by_name(name)
        self.all.detect{|ingredient| ingredient.name == name}
    end

    def desserts
        Dessert.all.select{|dessert| dessert == self.dessert}
    end

    def bakery
        self.desserts.map(&:bakery)
    end

end