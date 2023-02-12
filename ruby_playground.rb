my_array = ["back-end", "front-end", "full-stack", "low-code"]

# 1.1 - Print element "full-stack" on the terminal
# p my_array[2]

# 1.2 - Print every element from my_array
# my_array.each do |element|
#   p element
# end

# 1.3 - Print every element with associated index
# my_array.each_with_index do | element, index |
#   puts "#{index +1 } - #{element}"
# end


gabriel = {
  name: "Gabriel",
  age: 35,
  profession: "full_stack_developer",
  salary: 1000
}

# 2.1 Print the value of the name and age on the terminal
# p "#{gabriel[:name]} - #{gabriel[:age]}"

# 2.2 Give me a payrise
# gabriel[:salary] = 4000
# p gabriel

# 2.3 Add key nacionality: brazilian 
# gabriel[:nacionality] = "brazilian"
# p gabriel

# 3. Create a class Person with attributes name, age, profession and salary:
class Person
  def initialize(name, age, profession, salary)
    @name = name
    @age = age
    @profession = profession
    @salary = salary
  end
end

# 4. Instantiate that Person with specific attributes:
gabriel = Person.new(name: "gabriel", age: 35, profession: "full-stack....")





# Games challenge - Easy like a sunday morning! =)
#     Create table games with name, genre & address (inherit from ActiveRecord::Migration[7.0])
#     Create model (inherit from ActiveRecord::Base)
#     Generate 5 games as seeds (use faker if you want)
#     Understand router to check what we need to implement
#     Start action by action (router > controller > view )
#     Run lib/app.rb to test it.
#     Have fun