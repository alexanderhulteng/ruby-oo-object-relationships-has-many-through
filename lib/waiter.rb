class Waiter
    attr_accessor :name, :experience
    @@all = []

    def initialize(name, experience)
        @name = name
        @experience = experience
        @@all << self
    end


    def self.all
        @@all
    end

    def new_meal(customer, total, tip=0)
        Meal.new(self, customer, total, tip)
    





    end

    def meals
        Meal.all.select do |k|
            k.waiter == self
        end
    end

    def best_tipper
        the_man = meals.max do |a, b|
            a.tip <=> b.tip
        end
        the_man.customer
    end



    

end