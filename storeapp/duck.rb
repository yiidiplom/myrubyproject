class Duck

   def initialize(greeting)
      @greeting = greeting
   end

   def quack
      puts @greeting
   end

   def self.quack
      puts "Class Duck #{@greeting}"
   end

end

duck1 = Duck.new("Krya-krya")
duck1.quack

Duck.quack
